
///////////////////////////////////////////////////////////////////////////////////////////////////////
//   DMX configuration - parse the DMX Excel sheet and decide what fixtures should be instanciated   //
///////////////////////////////////////////////////////////////////////////////////////////////////////


import java.io.File;
import java.nio.file.StandardCopyOption.*;
import java.io.IOException;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;
import jxl.write.Label;
import jxl.write.Number;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

final int FIXTURE_TYPE_COLUMN            = 12;
final int FIXTURE_NBCHANNELS_COLUMN      = 13;
final int FIXTURE_NAME_COLUMN            = 14;
final int FIXTURE_DESC_START_ROW         = 19;

final int XLS_STRUCTURE_ARRAY_MIN_ROW    = 1;
final int XLS_STRUCTURE_ARRAY_MAX_ROW    = 10;
final int XLS_STRUCTURE_ARRAY_MIN_COLUMN = 3;
final int XLS_STRUCTURE_ARRAY_MAX_COLUMN = 54;

public class DMXConfiguration {
  

  DMXConfiguration() {
    boolean exceptionRaised = false;

    try {
      
      Workbook readWorkbook = Workbook.getWorkbook(new File(sketchPath("") + "/" + "DMX_Configuration.xls"));
      
      try {
        parseDMXConfiguration(readWorkbook.getSheet(0), 0);     // Universe 1
        parseDMXConfiguration(readWorkbook.getSheet(1), 1);     // Universe 2
        // Sheet sheet = workbook.getSheet(0);
        
        // Initialize the subfamilies of the different configured fixtures
        dmxInit_buildSubObjects();
      }
      catch (Exception e) {
        println("that's already bad");
        exceptionRaised = true;
        outputLog.println("Exception while trying to parse the DMX configuration (and build the internal Strobot objects: " + e);
      }
   
      WritableWorkbook workbook = Workbook.createWorkbook(new File(sketchPath("") + "/" + "DMX_Configuration_temp.xls"), readWorkbook);
      // Print the DMX library in all the used Sheets
      //updateFixtureDefinitionInExcel(workbook.getSheet(0));
      //updateFixtureDefinitionInExcel(workbook.getSheet(1));

      workbook.write();
      workbook.close();
      readWorkbook.close();

    }
    catch (Exception e) {
      exceptionRaised = true;
      outputLog.println("Exception while editing the XLS configuration file: " + e);
    }

    if (!exceptionRaised) {
      //Parsing and editing the Excel file did not yield any problem, copy the edited file to the main one
      // TBIL
      //Files.copy(new File(sketchPath("") + "/" + "DMX_Configuration_temp.xls"), new File(sketchPath("") + "/" + "DMX_Configuration.xls"), REPLACE_EXISTING);
      try {
        File tempFile = new File(sketchPath("") + "/" + "DMX_Configuration_temp.xls");
        copyFileUsingFileStreams(tempFile, new File(sketchPath("") + "/" + "DMX_Configuration.xls"));
        tempFile.delete();
      }
      catch (IOException e) {
        outputLog.println("Exception while overwriting the original XLS configuration file: " + e);
      }
    }

  }

  void close() {

  }

  // Print the list of available fixtures inside Excel
  void updateFixtureDefinitionInExcel(WritableSheet s) {
    try {
      int row = FIXTURE_DESC_START_ROW;
      for (Fixture fixture: fixtureLibrary) {
        String fixtureName = fixture.getFullName();
        String fixtureType = fixture.getType();
        int nbChannels     = fixture.getNbChannels();

        Label nameLabel         = new Label(FIXTURE_NAME_COLUMN, row, fixtureName);
        Label typeLabel         = new Label(FIXTURE_TYPE_COLUMN, row, fixtureType);
        Number nbChannelsNumber = new Number(FIXTURE_NBCHANNELS_COLUMN, row, nbChannels);
        s.addCell(nameLabel);
        s.addCell(typeLabel);
        s.addCell(nbChannelsNumber);
        row++;
      }      
    }
    catch (Exception e) {
      outputLog.println("Exception while trying to print the Fixture library in the DMX Excel configuration file: " + e);
    }
  }

  void parseDMXConfiguration(Sheet s, int universeID) {
    for (int y = XLS_STRUCTURE_ARRAY_MIN_COLUMN; y<= XLS_STRUCTURE_ARRAY_MAX_COLUMN; y++) {
      for (int x = XLS_STRUCTURE_ARRAY_MIN_ROW; x<= XLS_STRUCTURE_ARRAY_MAX_ROW; x++) {
        String cellContents = s.getCell(x, y).getContents();
        if (!cellContents.equals("")) {

          String cellSplit[] = cellContents.split("\\|");   // | is treated as an OR in regex, which is why we need to escape it
          if (cellSplit.length < 2) {
            outputLog.println("DMX Configuration - Invalid fixture, check the Excel configuration file: " + cellContents);
            break;
          }
          String fixtureName = cellSplit[0];
          String fixtureType = cellSplit[1];
          int startAddr = (x-XLS_STRUCTURE_ARRAY_MIN_ROW) + 10*(y-XLS_STRUCTURE_ARRAY_MIN_COLUMN);
          
          // Parse the different elements of the string
          if (fixtureType.equals(FIXTURE_TYPE_STROBE)) {
            if (cellSplit.length < 4) {
              outputLog.println("DMX Configuration - Invalid Strobe fixture, check the Excel configuration file: " + cellContents);
              break;
            }
            String id = cellSplit[2];
            int integerID = int(id.substring(2));
            String group = cellSplit[3];

            try {
              if (group.toLowerCase().equals("right")) {
                DMXList_FrontRightStroboscopes.add(new DMX_Stroboscope(fixtureName, integerID, startAddr, universeID));
                outputLog.println("DMX Configuration: Created a new RightStrobe instance: " + fixtureName + " / ID" + integerID + " / start address:" + startAddr + " / universe " + universeID);
              }
              else if (group.toLowerCase().equals("left")) {
                DMXList_FrontLeftStroboscopes.add(new DMX_Stroboscope(fixtureName, integerID, startAddr, universeID));
                outputLog.println("DMX Configuration: Created a new LeftStrobe instance: " + fixtureName + " / ID" + integerID + " / start address:" + startAddr + " / universe " + universeID);
              }
              else {
                DMXList_BackStroboscopes.add(new DMX_Stroboscope(fixtureName, integerID, startAddr, universeID));
                outputLog.println("DMX Configuration: Created a new BackStrobe instance: " + fixtureName + " / ID" + integerID + " / start address:" + startAddr + " / universe " + universeID);
              }
            }
            catch (UndefinedFixtureException e) {
              outputLog.println("Error when trying to create a Strobe instance - undefined fixture: " + e);
            }

          }

          else if (fixtureType.equals(FIXTURE_TYPE_MOVING_HEAD)) {
            if (cellSplit.length < 6) {
              outputLog.println("DMX Configuration - Invalid Moving Head fixture, check the Excel configuration file: " + cellContents);
              break;
            }
            String id       = cellSplit[2];
            int integerID   = int(id.substring(2));
            String group    = cellSplit[3];
            String panMode  = cellSplit[4];
            String tiltMode = cellSplit[5];
            boolean booleanPanMode  = false;   // Default is "normal", aka "non-inverted"
            boolean booleanTiltMode = false;
            boolean booleanGroup    = true;    // Default is "floor fixture"
            if (!panMode.toLowerCase().equals("regularpan"))   { booleanPanMode  = true; }
            if (!tiltMode.toLowerCase().equals("regulartilt")) { booleanTiltMode = true; }
            if (!group.toLowerCase().equals("bottom"))         { booleanGroup    = false;}
            try {
              DMXList_MovingHeads.add(new DMX_MovingHead(fixtureName, integerID, startAddr, booleanPanMode, booleanTiltMode, booleanGroup, universeID));
              outputLog.println("DMX Configuration: Created a new MovingHead instance: " + fixtureName + " / ID" + integerID + " / start address:" + startAddr + " / universe " + universeID);
            }
            catch (UndefinedFixtureException e) {
              outputLog.println("Error when trying to create a Moving Head instance - undefined fixture: " + e);
            }
          }

          else if (fixtureType.equals(FIXTURE_TYPE_PAR)) {
            if (cellSplit.length < 3) {
              outputLog.println("DMX Configuration - Invalid PAR fixture, check the Excel configuration file: " + cellContents);
              break;
            }
            String id = cellSplit[2];
            int integerID = int(id.substring(2));

            try {
              DMXList_Pars.add(new DMX_PAR(fixtureName, integerID, startAddr, universeID));
              outputLog.println("DMX Configuration: Created a new PAR instance: " + fixtureName + " / ID" + integerID + " / start address:" + startAddr + " / universe " + universeID);
            }
            catch (UndefinedFixtureException e) {
              outputLog.println("Error when trying to create a PAR instance - undefined fixture: " + e);
            }
          }

        }
      }
    }
  }


  void copyFileUsingFileStreams(File source, File dest) throws IOException {
    InputStream input = null;
    OutputStream output = null;
    try {
      input = new FileInputStream(source);
      output = new FileOutputStream(dest);
      byte[] buf = new byte[1024];
      int bytesRead;
      while ((bytesRead = input.read(buf)) > 0) {
        output.write(buf, 0, bytesRead);
      }
    } finally {
      input.close();
      output.close();
    }
  }     

}