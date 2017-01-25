
///////////////////////////////////////////////////
/// Resize a larger buffer for a smaller buffer ///
///////////////////////////////////////////////////

import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.awt.image.DataBufferInt;
import java.awt.image.WritableRaster;


final String QUALITY = "QUALITY";
final String SPEED = "SPEED";

public static abstract class Resize {
                                      
        public Resize() {
          //No need to do anything in particular to create the object
        }
        
        /**
         * Gets the buffer.
         *
         * @param buffer the buffer
         * @param deviceXSize the device x size
         * @param deviceYSize the device y size
         * @param currentXSize the current x size
         * @param currentYSize the current y size
         * @return the buffer
         */
        public abstract int[] getBuffer(int[] buffer, int deviceXSize, int deviceYSize, int currentXSize, int currentYSize);
        
        /**
         * internal use - get buffer from image.
         *
         * @param scaledImage the scaled image
         * @param deviceXSize the device x size
         * @param deviceYSize the device y size
         * @return the pixels from image
         */
        public int[] getPixelsFromImage(BufferedImage scaledImage, int deviceXSize, int deviceYSize) {
                //painfully slow!
                //return scaledImage.getRGB(0, 0, deviceXSize, deviceYSize, null, 0, deviceXSize);
                DataBufferInt buf = (DataBufferInt) scaledImage.getRaster().getDataBuffer();
                return buf.getData();
        }

        /**
         * Creates the image.
         *
         * @param buffer the buffer
         * @param currentXSize the current x size
         * @param currentYSize the current y size
         * @return the buffered image
         */
        public BufferedImage createImage(int[] buffer, int currentXSize, int currentYSize) {
                BufferedImage bi = new BufferedImage(currentXSize, currentYSize, BufferedImage.TYPE_INT_RGB);
                //bi.setRGB(0, 0, currentXSize, currentYSize, buffer, 0, currentXSize);
                WritableRaster newRaster = bi.getRaster();
                newRaster.setDataElements(0, 0, currentXSize, currentYSize, buffer);
                bi.setData(newRaster);

                return bi;
        }

}




//This resize function is optimized for PixelArt oriented images
public class PixelResize extends Resize {

    //Instantiates a new pixel resize
    public PixelResize() {
            super();
    }
    

    //Get an image buffer (int[]), create a temp image, scale it with by prioritizing speed, and return the scaled pixel int[] buffer
    public int[] getBuffer(int[] buffer, int deviceXSize, int deviceYSize, int currentXSize, int currentYSize) {
        BufferedImage bi = createImage(buffer, currentXSize, currentYSize);
        
        bi = ScalrOld.resize(bi, ScalrOld.SPEED, deviceXSize, deviceYSize);
  
        int[] ret = getPixelsFromImage(bi, deviceXSize, deviceYSize);
        
        //Destroy image
        bi.flush();
        
        return ret;
    }
}

//This resize function works more like an area average filter

public class QualityResize extends Resize {

    /**
     * Instantiates a new quality resize.
     *
     * @param controller the controller
     */
    public QualityResize() {
            super();
    }
    
    /* (non-Javadoc)
     * @see com.neophob.sematrix.resize.Resize#getBuffer(int[], int, int, int, int)
     */
    public int[] getBuffer(int[] buffer, int deviceXSize, int deviceYSize, int currentXSize, int currentYSize) {
        BufferedImage bi = createImage(buffer, currentXSize, currentYSize);
       
        bi = ScalrOld.resize(bi, ScalrOld.QUALITY, deviceXSize, deviceYSize);

        int[] ret = getPixelsFromImage(bi, deviceXSize, deviceYSize);

        //Destroy image
        bi.flush();
        
        return ret;
    }
}




public static class ScalrOld {
        
        private ScalrOld() {
                //no instance allowed 
        }
        
        /**
         * Used to define the different scaling hints that the algorithm can prefer.
         */

        /**  ----> Automatic scaling
         * Used to indicate that the scaling implementation should decide which
         * method to use in order to get the best looking scaled image in the
         * least amount of time. When scaling an image down in size, this method
         * takes advantage of the fact that scaling an image to 800px or bigger
         * looks roughly the same whether the SPEED or QUALITY method are used
         * while scaling an image smaller than that needs to be scaled using the
         * QUALITY method in order to keep it looking good. Most users simply
         * looking for a "good" result are meant to use this method.
         */
        static String AUTOMATIC = "AUTOMATIC";
         

        /** ----> Fast scaling
         * Used to indicate that the scaling implementation should scale as fast
         * as possible and return a result. For smaller images (below 800px in
         * size) this can result in noticeable aliasing but it can be a few
         * magnitudes times faster than using the QUALITY method.
         */        
        static String SPEED = "SPEED";


        /** ----> Quality scaling
         * Used to indicate that the scaling implementation should do everything
         * it can to create as nice of a result as possible. This approach is
         * most important for smaller pictures (800px or smaller) and less
         * important for larger pictures as the difference between this method
         * and the SPEED method become less and less noticeable as the
         * source-image size increases. Using the AUTOMATIC method will
         * automatically prefer the QUALITY method when scaling an image down
         * below 800px in size.
         */        
        static String QUALITY = "QUALITY";        

        /**
         * Threshold in pixels (width or height) at which point a scaling operation
         * using the "AUTOMATIC" method will use to decide if an image should use
         * the SPEED method (if bigger than threshold) or the QUALITY method (if
         * smaller than threshold). This was based on A/B testing with images
         * processed with the two algorithms and noticing right around an image size
         * of 800x600 or larger where the difference in quality is negligible when
         * using the more expensive QUALITY method. While this is a relatively
         * arbitrary number (no mathematics to back it up) it should provide a good
         * default in most use-cases. Users that are not seeing the results they
         * need can perform their own pre-calculation and then request either a
         * SPEED or QUALITY scaling approach.
         */
        public static final int AUTOMATIC_THRESHOLD_PX = 800;

        /**
         * Resize a given image (maintaining its proportion) to a width and height
         * of the given target size using the scaling method of
         * {@link Method#AUTOMATIC}.
         * 
         * @param src
         *            The image that will be scaled.
         * @param targetSize
         *            The target width and height (square) that you wish the image
         *            to fit within.
         * 
         * @return the proportionally scaled image with either a width or height of
         *         the given target size.
         * 
         * @throws IllegalArgumentException
         *             if <code>targetSize</code> is &lt; 0.
         */
        public static BufferedImage resize(BufferedImage src, int targetSize)
                        throws IllegalArgumentException {
                return resize(src, AUTOMATIC, targetSize, targetSize);
        }

        /**
         * Resize a given image (maintaining its proportion) to a width and height
         * of the given target size using the given scaling method.
         * 
         * @param src
         *            The image that will be scaled.
         * @param scalingMethod
         *            The method used for scaling the image; preferring speed to
         *            quality or a balance of both.
         * @param targetSize
         *            The target width and height (square) that you wish the image
         *            to fit within.
         * 
         * @return the proportionally scaled image with either a width or height of
         *         the given target size.
         * 
         * @throws IllegalArgumentException
         *             if <code>scalingMethod</code> is <code>null</code> or if
         *             <code>targetSize</code> is &lt; 0.
         */
        public static BufferedImage resize(BufferedImage src, String scalingMethod,
                        int targetSize) throws IllegalArgumentException {
                return resize(src, scalingMethod, targetSize, targetSize);
        }



        /**
         * Resize a given image (maintaining its proportion) to the target width and
         * height using the given scaling method and optionally print out
         * performance and debugging information while doing it.
         * 
         * @param src
         *            The image that will be scaled.
         * @param scalingMethod
         *            The method used for scaling the image; preferring speed to
         *            quality or a balance of both.
         * @param targetWidth
         *            The target width that you wish the image to have.
         * @param targetHeight
         *            The target height that you wish the image to have.
         * @param printDebugInfo
         *            Used to indicate if debugging information should be printed
         *            out during the scaling operation. Can be useful for
         *            troubleshooting.
         * @param printElapseTimes
         *            Used to indicate if performance metrics (elapse times) should
         *            be printed out during the scaling operation.
         * 
         * @return the proportionally scaled image no bigger than the given width
         *         and height.
         * 
         * @throws IllegalArgumentException
         *             if <code>scalingMethod</code> is <code>null</code>, if
         *             <code>targetWidth</code> is &lt; 0 or if
         *             <code>targetHeight</code> is &lt; 0.
         */
        public static BufferedImage resize(BufferedImage src, String scalingMethod,
                        int targetWidth, int targetHeight) throws IllegalArgumentException {
                if (scalingMethod == null)
                        throw new IllegalArgumentException("scalingMethod cannot be null");
                if (targetWidth < 0)
                        throw new IllegalArgumentException("targetWidth must be >= 0");
                if (targetHeight < 0)
                        throw new IllegalArgumentException("targetHeight must be >= 0");

                BufferedImage result = null;

                if (src != null) {
                        int currentWidth = src.getWidth();
                        int currentHeight = src.getHeight();

                        /*
                         * The resize operation has to be constrained by the smallest
                         * dimension (width or height) in order to keep the image
                         * proportional even if the caller passes in bogus w/h values. For
                         * example, trying to scale an image from 1600x1200 to 1600x20. In
                         * order to maintain the correct proportion of the image, the width
                         * of 1600 will have to be corrected for and the height of 20 used
                         * as the primary constraint.
                         */
/*                        

                        I DONT WANT TO USE THAT CODE - the resize does not work as expected.

                         if (targetHeight <= targetWidth) {
                                // Height is smaller or equal to width, so calculate a new width
                                // using the height, maintaining the known ratio.
                                targetWidth = Math.round((float) targetHeight / ratio);

                                if (printDebugInfo)
                                        System.out.println("\tAdjusted targetWidth to "
                                                        + targetWidth
                                                        + " in order to maintain image proportions");
                        } else {
                                // Width is smaller than height, so calculate a new height using
                                // the width, maintaining the known ratio.
                                targetHeight = Math.round((float) targetWidth * ratio);

                                if (printDebugInfo)
                                        System.out.println("\tAdjusted targetHeight to "
                                                        + targetHeight
                                                        + " in order to maintain image proportions");
                        }
*/
                        /*
                         * Using an AUTOMATIC method we look at the image and see if either
                         * of its dimensions are larger than our threshold value we
                         * determined is the cutoff point where the visual difference
                         * between the SPEED method and QUALITY method are negligible at
                         * which point we use the SPEED method instead to save time. If the
                         * width and height are smaller than that value, then we use the
                         * QUALITY method to ensure a good looking picture. In the case of
                         * scaling-up, we never use the Campbell algorithm even if we are
                         * doing a QUALITY scale operation and will instead use a single
                         * BICUBIC interpolation which is much faster than multiple scale
                         * iterations up-wards.
                         */
                        if (scalingMethod == AUTOMATIC) {
                                if (targetWidth < AUTOMATIC_THRESHOLD_PX && targetHeight < AUTOMATIC_THRESHOLD_PX)
                                        scalingMethod = QUALITY;
                                else
                                        scalingMethod = SPEED;
                        }

                        // Now we scale the image
                        if (scalingMethod == SPEED) {
                                result = new BufferedImage(targetWidth, targetHeight,
                                                src.getType());
                                Graphics2D resultGraphics = result.createGraphics();

                                resultGraphics.setRenderingHint(
                                                RenderingHints.KEY_INTERPOLATION,
                                                RenderingHints.VALUE_INTERPOLATION_NEAREST_NEIGHBOR);
                                resultGraphics.drawImage(src, 0, 0, targetWidth, targetHeight,
                                                null);
                        } else if (scalingMethod == QUALITY) {
                                /*
                                 * If we are scaling up, directly using a single BICUBIC will
                                 * give us better results then using Chris Campbell's
                                 * incremental scaling operation. If we are scaling down, we
                                 * must use the incremental scaling algorithm for the best
                                 * result.
                                 */
                                if (targetWidth > currentWidth && targetHeight > currentHeight) {
                                        result = new BufferedImage(targetWidth, targetHeight,
                                                        src.getType());
                                        Graphics2D resultGraphics = result.createGraphics();

                                        // BICUBIC gives us the best results when scaling up in a
                                        // single operation.
                                        resultGraphics.setRenderingHint(
                                                        RenderingHints.KEY_INTERPOLATION,
                                                        RenderingHints.VALUE_INTERPOLATION_BICUBIC);
                                        resultGraphics.drawImage(src, 0, 0, targetWidth,
                                                        targetHeight, null);
                                } else {
                                        boolean hasReassignedSrc = false;

                                        /*
                                         * Using Chris Campbell's incremental scaling algorithm:
                                         * http://today.java.net/pub/a/today/2007/04/03/perils
                                         * -of-image-getscaledinstance.html
                                         * 
                                         * NOTE: Modifications to the original algorithm are
                                         * variable names and comments added for clarity and the
                                         * hard-coding of using BICUBIC interpolation as well as the
                                         * explicit "flush()" operation on the interim BufferedImage
                                         * instances to avoid resource leaking.
                                         */
                                        do {
                                                // If the current width is bigger than our target, cut
                                                // it in half and sample again.
                                                if (currentWidth > targetWidth) {
                                                        currentWidth /= 2;

                                                        // If we cut the width too far it means we are on
                                                        // our last sampling step. Just set
                                                        // it to the target width and finish up.
                                                        if (currentWidth < targetWidth)
                                                                currentWidth = targetWidth;
                                                }

                                                // If the current height is bigger than our target, cut
                                                // it in half and sample again.
                                                if (currentHeight > targetHeight) {
                                                        currentHeight /= 2;

                                                        // If we cut the height too far it means we are on
                                                        // our last sampling step. Just set
                                                        // it to the target height and finish up.
                                                        if (currentHeight < targetHeight)
                                                                currentHeight = targetHeight;
                                                }

                                                BufferedImage incrementalImage = new BufferedImage(
                                                                currentWidth, currentHeight, src.getType());
                                                Graphics2D incrementalGraphics = incrementalImage
                                                                .createGraphics();

                                                /*
                                                 * Originally we wanted to use BILINEAR interpolation
                                                 * here because it takes 1/3rd the time that the BICUBIC
                                                 * interpolation does, however, when scaling large
                                                 * images down to most sizes bigger than a thumbnail we
                                                 * witnessed Noticeable "softening" in the resultant
                                                 * image with BILINEAR that would be unexpectedly
                                                 * annoying to a user expecting a "QUALITY" scale of
                                                 * their original image. Instead BICUBIC was chosen to
                                                 * honor the contract of a QUALITY scale of the original
                                                 * image.
                                                 */
                                                incrementalGraphics.setRenderingHint(
                                                                RenderingHints.KEY_INTERPOLATION,
                                                                RenderingHints.VALUE_INTERPOLATION_BICUBIC);
                                                incrementalGraphics.drawImage(src, 0, 0, currentWidth,
                                                                currentHeight, null);
                                                incrementalGraphics.dispose();

                                                /*
                                                 * Before re-assigning our interim (partially scaled)
                                                 * incrementalImage to be the new src image, we want to
                                                 * flush() the previous src image IF (and only IF) it
                                                 * was one of our own temporary BufferedImages created
                                                 * during this incremental down-sampling cycle. If it
                                                 * wasn't one of ours, then it was the caller-supplied
                                                 * BufferedImage in which case we don't want to flush()
                                                 * it.
                                                 */
                                                if (hasReassignedSrc)
                                                        src.flush();

                                                // Now treat our incremental partially scaled image as
                                                // the src image and cycle through our loop again to do
                                                // another incremental scaling of it (if necessary).
                                                src = incrementalImage;

                                                // Keep track of us re-assigning the original
                                                // caller-supplied source image with one of our interim
                                                // BufferedImages.
                                                if (!hasReassignedSrc)
                                                        hasReassignedSrc = true;
                                        } while (currentWidth != targetWidth
                                                        || currentHeight != targetHeight);

                                        // Once the loop has exited, the source image argument is
                                        // now our scaled result image that we want to return.
                                        result = src;
                                }
                        }

                }

                return result;
        }
}
