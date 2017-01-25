
////////////////////////////////////////////////////////////////////////////////////
///                        TPM2Serial converter definition                       ///
/// Library to communicate with an TPM2 serial device using the tpm2net protocol ///
////////////////////////////////////////////////////////////////////////////////////

import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.Adler32;


import processing.core.PApplet;
import processing.serial.Serial;


///////////////////////////////////
/// TPM2Net Protocol definition ///
///////////////////////////////////

/**
 * TPM2Net protocol converter
 * 
 * TPM2 uses UDP as transport layer, Port 65506 
 * 
 * see http://www.ledstyles.de/ftopic18969.html for more details
 * 
 * Protocol:
 * Blockstart-Byte      :  0x9C
 * 
 * Block-Type           :  0xDA = Frame Data (Data) *or*
 *                         0xC0 = Instruction (Command) *or*
 *                         0xAA = Requested Answer (from Microcontroller to Master)
 * 
 * 16 Bit Frame Size    :  High-Byte first, then
 *                         Low-Byte
 * 
 * Packet number        :  0-255
 * 
 * Number of Packets    :  1-255
 *
 * Payload (Body Data)  :  1 - 65.535 Bytes Daten oder Befehle mit Parametern
 * 
 * Blockende-Byte       : 0x36
 * 
 * @author Michael Vogt
 *
 */
 

public static final int TPM2_NET_PORT = 65506;
private static final int TPM2_NET_HEADER_SIZE = 6;                
private static final byte START_BYTE = (byte) 0x9C;
private static final byte DATA_FRAME = (byte) 0xDA;
private static final byte CMD_FRAME = (byte) 0xc0;
private static final byte BLOCK_END = (byte) 0x36;

/**
 * Create a TPM2.Net payload. Hint: this is the 2nd release of the protocol, added totalPackets
 * 
 * @param frame
 * @return
 */
public byte[] createImagePayload(int packetNumber, int totalPackets, byte[] data) {
    int frameSize = data.length;
    byte[] outputBuffer = new byte[frameSize + TPM2_NET_HEADER_SIZE + 1];
    
    outputBuffer[0] = START_BYTE;
    outputBuffer[1] = DATA_FRAME;
    outputBuffer[2] = ((byte)(frameSize >> 8 & 0xFF));
    outputBuffer[3] = ((byte)(frameSize & 0xFF));
    outputBuffer[4] = ((byte)packetNumber);
    outputBuffer[5] = ((byte)totalPackets);
    //write footer
    outputBuffer[TPM2_NET_HEADER_SIZE + frameSize] = BLOCK_END;                

    //copy payload
    System.arraycopy(data, 0, outputBuffer, TPM2_NET_HEADER_SIZE, frameSize);
    return outputBuffer;
}

/**
 * send a cmd data packet, used as PING command
 * 
 * @param data
 * @return
 */
public byte[] createCmdPayload(byte[] data) {
    int frameSize = data.length;
    byte[] outputBuffer = new byte[frameSize + TPM2_NET_HEADER_SIZE + 1];
    
    outputBuffer[0] = START_BYTE;
    outputBuffer[1] = CMD_FRAME;
    outputBuffer[2] = ((byte)(frameSize >> 8 & 0xFF));
    outputBuffer[3] = ((byte)(frameSize & 0xFF));
    outputBuffer[4] = ((byte)0);
    outputBuffer[5] = ((byte)0);

    //write footer
    outputBuffer[TPM2_NET_HEADER_SIZE + frameSize] = BLOCK_END;                

    //copy payload
    System.arraycopy(data, 0, outputBuffer, TPM2_NET_HEADER_SIZE, frameSize);
    return outputBuffer;
}

///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////

/**
 * library to communicate with an TPM2 serial device using the tpm2net protocol
 * created for ledstyles.de 
 * 
 * @author Michael Vogt / neophob.com
 *
 */
public class Tpm2Serial {
        
    /** internal lib version. */
    public static final String VERSION = "1.1";

    private Adler32 adler = new Adler32();
    
    /** The baud. */
    private int baud;
    
    /** The port. */
    private Serial port;

    /** map to store checksum of image. */
    private long lastDataMap;
            

    /**
     * Create a new instance to communicate with the Teensy.
     *
     * @param portName the port name
     * @param targetBuffersize the target buffersize
     * @param baud the baudrate         
     * @throws NoSerialPortFoundException the no serial port found exception
     */
    public Tpm2Serial(String portName, int targetBuffersize, int baud) throws IllegalArgumentException, NoSerialPortFoundException {
            
        outputLog.println("-- Initializing TPM2Serial lib -- version " + VERSION);
        
        this.baud = baud;
        
        lastDataMap = 0L;
        
        String serialPortName="";        
        
        if (portName != "") {
                //open specific port
                serialPortName = portName;
                port = openPort(portName, baud);
        } else {
                //the port was not defined, try to find it by guessing
                String[] ports = Serial.list();
                for (int i=0; port==null && i<ports.length; i++) {
                        outputLog.println("Serial ports info - open port : " + ports[i]);
                        try {
                                serialPortName = ports[i];
                                openPort(ports[i], this.baud);
                        //catch all, there are multiple exception to catch (NoSerialPortFoundException, PortInUseException...)
                        } catch (Exception e) {
                                // search next port...
                        }
                }
        }
                        
        if (port==null) {
                throw new NoSerialPortFoundException("Error: no serial port found!");
        }
        outputLog.println("Found serial port : " + serialPortName);
            
    }
    

    /**
     * clean up library.
     */
    public void dispose() {
            if (connected()) {
                    port.stop();
            }
    }

    /**
     * return the version of the library.
     *
     * @return String version number
     */
    public String version() {
            return VERSION;
    }


    /**
     * return connection state of lib.
     *
     * @return wheter rainbowudino is connected
     */
    public boolean connected() {
            return (port != null);
    }    



    /**
     * wrapper class to send a RGB image to the miniDmx device.
     * the rgb image gets converted to the miniDmx compatible
     * "image format"
     *
     * @param data rgb data (int[64], each int contains one RGB pixel)
     * @param colorFormat the color format
     * @return true if send was successful
     */
    //public boolean sendRgbFrame(int[] data, String colorFormat) {
    //        return sendFrame(convertBufferTo24bit(data, colorFormat));
    //}


    
    /**
     * get md5 hash out of an image. used to check if the image changed
     *
     * @param data the data
     * @return true if send was successful
     */
    private boolean didFrameChange(byte data[]) {
        adler.reset();
        adler.update(data);
        long l = adler.getValue();
        
        if (lastDataMap==l) {
                //last frame was equal current frame, do not send it!
                return false;
        }
        //update new hash
        lastDataMap=l;
        return true;
    }
    
    /**
     * @param data byte[3*8*4]
     * @return true if send was successful
     * @throws IllegalArgumentException the illegal argument exception
     * Send frame if the frame changed, or if the program is in init mode, or if blackout is active
     */
    public boolean sendFrame(byte data[]) throws IllegalArgumentException {
      
      if (didFrameChange(data) || (drawImage == 1 && imagenumber == 0) || (drawAnimation == 1 && animationnumber == 1) || (drawAnimation == 1 && animationnumber == 2)) {
          writeSerialData(data);
       }
       return false;
    }
    

    public Serial getPort() {
            return port;
    }

    /**
     * send the data to the serial port.
     *
     * @param cmdfull the cmdfull
     * 
     */
    private synchronized void writeSerialData(byte[] cmdfull) {
            if (port==null) {
                    outputLog.println("!!! Error !!! Port not ready !");
            }
            
            try {
                    port.write(cmdfull);
                    //port.output.flush();
                    //DO NOT flush the buffer... hmm not sure about this, processing flush also
                    //and i discovered strange "hangs"...
            } catch (Exception e) {
                    outputLog.println("Error !!! Failed sending serial data ! Caught exception : " + e);                       
            }                
    }


        
}

//Initially inside the TPM2Serial class, openPort is best declared as a global function : Serial requires the Papplet as an argument
private Serial openPort(String portName, int baud) throws NoSerialPortFoundException {
        Serial myTeensyPort = null;
        try {
                myTeensyPort = new Serial(this, portName, baud); 
                myTeensyPort.write("PXL".getBytes());
        } catch (Exception e) {        
                outputLog.println("Warning : Failed to open port " + portName + "  Exception raised : " + e);
                if (myTeensyPort != null) {
                        myTeensyPort.stop();                                                
                }
                myTeensyPort = null;
                throw new NoSerialPortFoundException("Failed to open port "+portName+": "+e);
        }        
        return myTeensyPort;
}
