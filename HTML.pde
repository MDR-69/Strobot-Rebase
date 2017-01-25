///////////////////////////////////////////////////////////////////////////////////////////////////////////
// Create an automatic PHP site in order to browse the available animations without looking at the code  //
///////////////////////////////////////////////////////////////////////////////////////////////////////////


//Create a php outputfile, which shall contain the filtering web page
static PrintWriter phpOutputFile;

void create_PHP_output() {
  phpOutputFile = createWriter("HTML/Strobot_AnimationViewer.php");
  print_playmeHeader();
  print_htmlHeader();
  print_htmlBody();
  print_filterForm();
  print_attributes();
  print_htmlFooter();

  print_phpFunctions();
  
  phpOutputFile.flush(); // Writes the remaining data to the file
  phpOutputFile.close(); // Finishes the file
}

void print_playmeHeader() {
  phpOutputFile.println("<!--/////////////////////////////////////////-->");
  phpOutputFile.println("<!--//Xi Light Setup - Animation Viewer//-->");
  phpOutputFile.println("<!--/////////////////////////////////////////-->");
  phpOutputFile.println("");
  phpOutputFile.println(""); 
}

void print_htmlHeader() {
  phpOutputFile.println("<!doctype html>                                                                                   ");
  phpOutputFile.println("                                                                                                  ");
  phpOutputFile.println("<html>                                                                                            ");
  phpOutputFile.println("  <head>                                                                                          ");
  phpOutputFile.println("    <meta charset=\"UTF-8\">                                                                      ");
  phpOutputFile.println("    <title>Xi Live Setup - Animation List</title>                                             ");
  phpOutputFile.println("    <link rel=\"icon\"                                                                            ");
  phpOutputFile.println("      type=\"image/png\"                                                                          ");
  phpOutputFile.println("      href=\"img/favicon.png\">                                                                   ");
  phpOutputFile.println("    <link rel=\"stylesheet\" type=\"text/css\" href=\"Strobot_AnimationViewer.css\" />   ");
  phpOutputFile.println("    <link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>   ");
  phpOutputFile.println("    <script src=\"js/processing-1.4.1.min.js\"></script>                                          ");
  phpOutputFile.println("  </head>                                                                                         ");
}

void print_htmlBody() {

  phpOutputFile.println("                                                                                                                                                                                      ");
  phpOutputFile.println("  <body>                                                                                                                                                                              ");
  //phpOutputFile.println("    <div class=\"backgrounddiv\">                                                                                                                                                     ");
  //phpOutputFile.println("      <canvas id=\"background\" data-processing-sources=\"background/background.pde\"></canvas>                                                                                       ");
  //phpOutputFile.println("    </div>                                                                                                                                                                            ");
  phpOutputFile.println("                                                                                                                                                                                      ");
  phpOutputFile.println("    <div class=\"content\">                                                                                                                                                           ");
  phpOutputFile.println("                                                                                                                                                                                      ");
  phpOutputFile.println("      <div class=\"full_description\">                                                                                                                                                ");
  phpOutputFile.println("        <h1><img src=\"../data/PlayMe.png\" height=\"90px\" width=\"90px\" class=\"floatingimage\" alt=\"Hell yeah\" /> Live Setup - Animation helper tool</h1>                       ");
  phpOutputFile.println("        <p>This PHP application is to be used along with a PHP server<br/>If not already installed, download MAMP (OSX) or WAMP (Windows), and run your own local Apache server.</p>  ");
  phpOutputFile.println("        <p></p>                                                                                                                                                                       ");
  
}

void print_filterForm() {
  print_formHeader();
  /*  
  //The following function is useful and elegant because all attributes are automatically printed... but organization in the HTML file is a mess
  //It is better to print individual groups and associate them together
  for (String attribute: registeredAttributes) {
    print_attributeform(attribute);
  }
  */

  phpOutputFile.println("                <fieldset><legend>Genre : </legend>");
  print_attributeform("Geometric");
  print_attributeform("Atmospheric");
  print_attributeform("Fade In/Out");
  print_attributeform("Random");
  phpOutputFile.println("                </fieldset>");
  
  phpOutputFile.println("                <fieldset><legend>Colors : </legend>");
  print_attributeform("Red");
  print_attributeform("B&W");
  print_attributeform("Blue");
  print_attributeform("Colorful");
  print_attributeform("Very Dark");
  print_attributeform("Very Bright");
  phpOutputFile.println("                </fieldset>");
  
  phpOutputFile.println("                <fieldset><legend>Animation : </legend>");
  print_attributeform("Rotating");
  print_attributeform("Simple");
  print_attributeform("Complex");
  print_attributeform("Evolving");
  print_attributeform("Smooth");
  print_attributeform("Violent");
  phpOutputFile.println("                </fieldset>");

  phpOutputFile.println("                <fieldset><legend>Speed : </legend>");
  print_attributeform("Rhythmic");
  print_attributeform("Fast");
  print_attributeform("Slow");
  print_attributeform("Still");
  phpOutputFile.println("                </fieldset>");

  phpOutputFile.println("                <fieldset><legend>Geometry : </legend>");
  print_attributeform("Lines");
  print_attributeform("Curves");
  print_attributeform("Triangles");
  print_attributeform("Squares");
  print_attributeform("Circles");
  print_attributeform("Spiral");
  print_attributeform("Noise");
  print_attributeform("Objects");
  phpOutputFile.println("                </fieldset>");

  phpOutputFile.println("                <fieldset><legend>Other attributes : </legend>");
  print_attributeform("Special");
  print_attributeform("Video");
  print_attributeform("Game");
  print_attributeform("3D");
  print_attributeform("TO BE DELETED");
  phpOutputFile.println("                </fieldset>");

  phpOutputFile.println("                <div style=\"clear:both;\"></div>");

  print_formFooter();
}

void print_attributeform(String attribute) {
    phpOutputFile.println("                <?php if (isset($_POST['" + attribute + "']) == 1)                                                                                   ");
    phpOutputFile.println("                { echo '<input type=\"checkbox\" class=\"css-checkbox\" id=\"" + attribute + "\" checked=\"checked\" /> <label for=\"" + attribute + "\" name=\"" + attribute + "\"  class=\"css-label\">" + attribute + "</label><br />'; ");
    phpOutputFile.println("                  $SelectedAttributeList[] = '" + attribute + "';                                                                                    ");
    phpOutputFile.println("                  }                                                                                                                    ");
    phpOutputFile.println("                else                                                                                                                   ");
    phpOutputFile.println("                { echo '<input type=\"checkbox\" class=\"css-checkbox\" name=\"" + attribute + "\" id=\"" + attribute + "\" /> <label for=\"" + attribute + "\" class=\"css-label\">" + attribute + "</label><br />';} ?>                 ");

}

void print_formHeader() {
  phpOutputFile.println("        <form action=\"Strobot_AnimationViewer.php\" method=\"post\">   ");
  phpOutputFile.println("            Filter animations according to the following tags :<br />            ");
  phpOutputFile.println("                                                                                 ");
  phpOutputFile.println("            <p>                                                                  ");
}

void print_formFooter() {
  phpOutputFile.println("            <input type=\"submit\" value=\"Filter\" />");
  phpOutputFile.println("            <input type=\"reset\" value=\"Reset\" />  ");
  phpOutputFile.println("                                                      ");
  phpOutputFile.println("        </form>                                       ");
}

void print_htmlFooter() {
  phpOutputFile.println("      </div>");
  phpOutputFile.println("    </div>");
  phpOutputFile.println("  </body>");
  phpOutputFile.println("</html>"); 
}

void print_attributes() {
  phpOutputFile.println("        <?php                                                                              ");
  for (Attribute attribute: animationAttributes) {
    phpOutputFile.println("        $animationName[] = \'" + attribute.name + "\';                                   ");
    phpOutputFile.println(attribute.printAttributePHP());
  }  
  phpOutputFile.println("        echo filterAllAttributes($attributeList, $SelectedAttributeList, $animationName);  ");
  phpOutputFile.println("        ?>                                                                                 "); 
  
}

void print_phpFunctions() {
  phpOutputFile.println("<?php                                                                                           ");
  phpOutputFile.println("function printIfAttributeIsRegistered($List, $animationNbr, $attributeStringArray, $animName) { ");
  phpOutputFile.println("  $numberOfMatchingAttributes = 0;                                                              ");
  phpOutputFile.println("                                                                                                ");
  phpOutputFile.println("  foreach($List[$animationNbr] as $element) {                                                   ");
  phpOutputFile.println("    if (in_array($element, $attributeStringArray)) {                                            ");
  phpOutputFile.println("    $numberOfMatchingAttributes += 1;                                                           ");
  phpOutputFile.println("    }                                                                                           ");
  phpOutputFile.println("  }                                                                                             ");
  phpOutputFile.println("                                                                                                ");
  phpOutputFile.println("                                                                                                ");
  phpOutputFile.println("  if ($numberOfMatchingAttributes == count($attributeStringArray)) {                            ");
  phpOutputFile.println("    echo '<p>       ';                                                                          ");
  phpOutputFile.println("    echo '<img src=\"../GIF/PlayMeLightSetup';                                                  ");
  phpOutputFile.println("    echo $animationNbr;                                                                         ");
  phpOutputFile.println("    echo '.gif\"  class=\"floatingimage\" alt=\"Animation number = ';                           ");
  phpOutputFile.println("    echo $animationNbr;                                                                         ");
  phpOutputFile.println("    echo '\" /> </br>    Animation Number ';                                                    ");
  phpOutputFile.println("    echo $animationNbr;                                                                         ");
  phpOutputFile.println("    echo ' - MIDI note : ';                                                                     ");
  phpOutputFile.println("    echo getMidiNote($animationNbr);                                                            ");
  phpOutputFile.println("    echo ' </br>';                                                                              ");
  phpOutputFile.println("    echo $animName[$animationNbr];                                                              ");
  phpOutputFile.println("    echo ' </br>';                                                                              ");
  phpOutputFile.println("    echo 'Related attributes : [';                                                              ");
  phpOutputFile.println("    foreach($List[$animationNbr] as $attr) {                                                    ");
  phpOutputFile.println("      echo '  ';                                                                                ");
  phpOutputFile.println("      echo $attr;                                                                               ");
  phpOutputFile.println("      echo '  ';                                                                                ");
  phpOutputFile.println("    }                                                                                           ");
  phpOutputFile.println("    echo ']';                                                                                   ");
  phpOutputFile.println("    echo '</p> </br>';                                                                          ");
  phpOutputFile.println("  }                                                                                             ");
  phpOutputFile.println("}                                                                                               ");
  phpOutputFile.println("                                                                                                ");
  phpOutputFile.println("function filterAllAttributes($List, $attributeString, $animName) {                              ");
  phpOutputFile.println("  for ($numero = 0; $numero < count($List); $numero++) {                                        ");
  phpOutputFile.println("    printIfAttributeIsRegistered($List, $numero, $attributeString, $animName);                  ");
  phpOutputFile.println("  }                                                                                             ");
  phpOutputFile.println("}                                                                                               ");
  phpOutputFile.println("                                                                                                ");
  phpOutputFile.println("function getMidiNote($animationNbr) {                                                           ");
  phpOutputFile.println("  if ($animationNbr <= 127) {                                                                   ");
  phpOutputFile.println("    echo 'D#8 / Velocity = ';                                                                    ");
  phpOutputFile.println("    $tempNote = $animationNbr;                                                                   ");
  phpOutputFile.println("    echo $tempNote;                                                                              ");
  phpOutputFile.println("  }                                                                                              ");
  phpOutputFile.println("  else if ($animationNbr <= 254) {                                                               ");
  phpOutputFile.println("    echo 'E8 / Velocity = ';                                                                     ");
  phpOutputFile.println("    $tempNote = $animationNbr - 127;                                                             ");
  phpOutputFile.println("    echo $tempNote;                                                                              ");
  phpOutputFile.println("  }                                                                                              ");
  phpOutputFile.println("  else if ($animationNbr <= 381) {                                                               ");
  phpOutputFile.println("    echo 'F8 / Velocity = ';                                                                     ");
  phpOutputFile.println("    $tempNote = $animationNbr - 254;                                                             ");
  phpOutputFile.println("    echo $tempNote;                                                                              ");
  phpOutputFile.println("  }                                                                                              ");
  phpOutputFile.println("}                                                                                               ");
  phpOutputFile.println("?>                                                                                              ");
}
