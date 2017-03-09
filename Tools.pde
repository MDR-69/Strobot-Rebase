
//////////////////////////////////////////////////////////////
//   Tools - Useful functions which couldn't go elsewhere   //
//////////////////////////////////////////////////////////////

import java.io.FileWriter;

int   currentTimeRefUsedForRandom_Float = 0;
float currentGlobalRandom_Float         = 0.0;
float currentGlovalRandom_FloatRange    = 0;
int   currentTimeRefUsedForRandom_Int   = 0;
int   currentGlobalRandom_Int           = 0;
int   currentGlovalRandom_IntRange      = 0;


float getGlobalRandomVal_Float(float randomRange, int timeRef) {
  if (currentTimeRefUsedForRandom_Float == timeRef && currentGlovalRandom_FloatRange == randomRange) {
    return currentGlobalRandom_Float;
  }
  else {
    currentGlovalRandom_FloatRange = randomRange;
    currentGlobalRandom_Float = random(randomRange);
    currentTimeRefUsedForRandom_Float = timeRef;
    return currentGlobalRandom_Float;
  }
}

int getGlobalRandomVal_ChangingInt(int randomRange, int timeRef) {
  if (currentTimeRefUsedForRandom_Int == timeRef && currentGlovalRandom_IntRange == randomRange) {
    return currentGlobalRandom_Int;
  }
  else {
    currentGlovalRandom_IntRange = randomRange;
    int candidate = int(random(randomRange));
    while (candidate == currentGlobalRandom_Int && randomRange > 1) {
      candidate = int(random(randomRange));
    }
    currentGlobalRandom_Int = candidate;
    currentTimeRefUsedForRandom_Int = timeRef;
    return currentGlobalRandom_Int;
  }
}

void create_logfileHeader() {
    outputLog = createWriter("Strobot_logfile.txt");
    
    outputLog.println("///////////////////////////////////////////");
    outputLog.println("//Xi Light Setup - Output logger file//");
    outputLog.println("///////////////////////////////////////////");
    outputLog.println("");
    outputLog.println("");
    outputLog.println("// All information output by the application shall be stored in this log file //");
    outputLog.println("");
    outputLog.flush();
}



//// CSV Utilities

static class CSVUtils {

    final static char DEFAULT_SEPARATOR = ';';

    static void writeLine(PrintWriter w, List<String> values) throws IOException {
        writeLine(w, values, DEFAULT_SEPARATOR, ' ');
    }

    static void writeLine(PrintWriter w, List<String> values, char separators) throws IOException {
        writeLine(w, values, separators, ' ');
    }

    //https://tools.ietf.org/html/rfc4180
    static String followCVSformat(String value) {

        String result = value;
        if (result.contains("\"")) {
            result = result.replace("\"", "\"\"");
        }
        return result;

    }

    static void writeLine(PrintWriter w, List<String> values, char separators, char customQuote) throws IOException {

        boolean first = true;

        //default customQuote is empty

        if (separators == ' ') {
            separators = DEFAULT_SEPARATOR;
        }

        StringBuilder sb = new StringBuilder();
        for (String value : values) {
            if (!first) {
                sb.append(separators);
            }
            if (customQuote == ' ') {
                sb.append(followCVSformat(value));
            } else {
                sb.append(customQuote).append(followCVSformat(value)).append(customQuote);
            }

            first = false;
        }
        sb.append("\n");
        w.println(sb.toString());


    }

}