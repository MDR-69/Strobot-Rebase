<!--/////////////////////////////////////////-->
<!--//PlayMe Light Setup - Animation Viewer//-->
<!--/////////////////////////////////////////-->


<!doctype html>                                                                                   
                                                                                                  
<html>                                                                                            
  <head>                                                                                          
    <meta charset="UTF-8">                                                                      
    <title>PlayMe Live Setup - Animation List</title>                                             
    <link rel="icon"                                                                            
      type="image/png"                                                                          
      href="img/favicon.png">                                                                   
    <link rel="stylesheet" type="text/css" href="Strobot_AnimationViewer.css" />   
    <link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>   
    <script src="js/processing-1.4.1.min.js"></script>                                          
  </head>                                                                                         
                                                                                                                                                                                      
  <body>                                                                                                                                                                              
                                                                                                                                                                                      
    <div class="content">                                                                                                                                                           
                                                                                                                                                                                      
      <div class="full_description">                                                                                                                                                
        <h1><img src="../data/PlayMe.png" height="90px" width="90px" class="floatingimage" alt="Hell yeah" /> Live Setup - Animation helper tool</h1>                       
        <p>This PHP application is to be used along with a PHP server<br/>If not already installed, download MAMP (OSX) or WAMP (Windows), and run your own local Apache server.</p>  
        <p></p>                                                                                                                                                                       
        <form action="Strobot_AnimationViewer.php" method="post">   
            Filter animations according to the following tags :<br />            
                                                                                 
            <p>                                                                  
                <fieldset><legend>Genre : </legend>
                <?php if (isset($_POST['Geometric']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Geometric" checked="checked" /> <label for="Geometric" name="Geometric"  class="css-label">Geometric</label><br />'; 
                  $SelectedAttributeList[] = 'Geometric';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Geometric" id="Geometric" /> <label for="Geometric" class="css-label">Geometric</label><br />';} ?>                 
                <?php if (isset($_POST['Atmospheric']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Atmospheric" checked="checked" /> <label for="Atmospheric" name="Atmospheric"  class="css-label">Atmospheric</label><br />'; 
                  $SelectedAttributeList[] = 'Atmospheric';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Atmospheric" id="Atmospheric" /> <label for="Atmospheric" class="css-label">Atmospheric</label><br />';} ?>                 
                <?php if (isset($_POST['Fade In/Out']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Fade In/Out" checked="checked" /> <label for="Fade In/Out" name="Fade In/Out"  class="css-label">Fade In/Out</label><br />'; 
                  $SelectedAttributeList[] = 'Fade In/Out';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Fade In/Out" id="Fade In/Out" /> <label for="Fade In/Out" class="css-label">Fade In/Out</label><br />';} ?>                 
                <?php if (isset($_POST['Random']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Random" checked="checked" /> <label for="Random" name="Random"  class="css-label">Random</label><br />'; 
                  $SelectedAttributeList[] = 'Random';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Random" id="Random" /> <label for="Random" class="css-label">Random</label><br />';} ?>                 
                </fieldset>
                <fieldset><legend>Colors : </legend>
                <?php if (isset($_POST['Red']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Red" checked="checked" /> <label for="Red" name="Red"  class="css-label">Red</label><br />'; 
                  $SelectedAttributeList[] = 'Red';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Red" id="Red" /> <label for="Red" class="css-label">Red</label><br />';} ?>                 
                <?php if (isset($_POST['B&W']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="B&W" checked="checked" /> <label for="B&W" name="B&W"  class="css-label">B&W</label><br />'; 
                  $SelectedAttributeList[] = 'B&W';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="B&W" id="B&W" /> <label for="B&W" class="css-label">B&W</label><br />';} ?>                 
                <?php if (isset($_POST['Blue']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Blue" checked="checked" /> <label for="Blue" name="Blue"  class="css-label">Blue</label><br />'; 
                  $SelectedAttributeList[] = 'Blue';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Blue" id="Blue" /> <label for="Blue" class="css-label">Blue</label><br />';} ?>                 
                <?php if (isset($_POST['Colorful']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Colorful" checked="checked" /> <label for="Colorful" name="Colorful"  class="css-label">Colorful</label><br />'; 
                  $SelectedAttributeList[] = 'Colorful';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Colorful" id="Colorful" /> <label for="Colorful" class="css-label">Colorful</label><br />';} ?>                 
                <?php if (isset($_POST['Very Dark']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Very Dark" checked="checked" /> <label for="Very Dark" name="Very Dark"  class="css-label">Very Dark</label><br />'; 
                  $SelectedAttributeList[] = 'Very Dark';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Very Dark" id="Very Dark" /> <label for="Very Dark" class="css-label">Very Dark</label><br />';} ?>                 
                <?php if (isset($_POST['Very Bright']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Very Bright" checked="checked" /> <label for="Very Bright" name="Very Bright"  class="css-label">Very Bright</label><br />'; 
                  $SelectedAttributeList[] = 'Very Bright';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Very Bright" id="Very Bright" /> <label for="Very Bright" class="css-label">Very Bright</label><br />';} ?>                 
                </fieldset>
                <fieldset><legend>Animation : </legend>
                <?php if (isset($_POST['Rotating']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Rotating" checked="checked" /> <label for="Rotating" name="Rotating"  class="css-label">Rotating</label><br />'; 
                  $SelectedAttributeList[] = 'Rotating';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Rotating" id="Rotating" /> <label for="Rotating" class="css-label">Rotating</label><br />';} ?>                 
                <?php if (isset($_POST['Simple']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Simple" checked="checked" /> <label for="Simple" name="Simple"  class="css-label">Simple</label><br />'; 
                  $SelectedAttributeList[] = 'Simple';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Simple" id="Simple" /> <label for="Simple" class="css-label">Simple</label><br />';} ?>                 
                <?php if (isset($_POST['Complex']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Complex" checked="checked" /> <label for="Complex" name="Complex"  class="css-label">Complex</label><br />'; 
                  $SelectedAttributeList[] = 'Complex';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Complex" id="Complex" /> <label for="Complex" class="css-label">Complex</label><br />';} ?>                 
                <?php if (isset($_POST['Evolving']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Evolving" checked="checked" /> <label for="Evolving" name="Evolving"  class="css-label">Evolving</label><br />'; 
                  $SelectedAttributeList[] = 'Evolving';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Evolving" id="Evolving" /> <label for="Evolving" class="css-label">Evolving</label><br />';} ?>                 
                <?php if (isset($_POST['Smooth']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Smooth" checked="checked" /> <label for="Smooth" name="Smooth"  class="css-label">Smooth</label><br />'; 
                  $SelectedAttributeList[] = 'Smooth';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Smooth" id="Smooth" /> <label for="Smooth" class="css-label">Smooth</label><br />';} ?>                 
                <?php if (isset($_POST['Violent']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Violent" checked="checked" /> <label for="Violent" name="Violent"  class="css-label">Violent</label><br />'; 
                  $SelectedAttributeList[] = 'Violent';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Violent" id="Violent" /> <label for="Violent" class="css-label">Violent</label><br />';} ?>                 
                </fieldset>
                <fieldset><legend>Speed : </legend>
                <?php if (isset($_POST['Rhythmic']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Rhythmic" checked="checked" /> <label for="Rhythmic" name="Rhythmic"  class="css-label">Rhythmic</label><br />'; 
                  $SelectedAttributeList[] = 'Rhythmic';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Rhythmic" id="Rhythmic" /> <label for="Rhythmic" class="css-label">Rhythmic</label><br />';} ?>                 
                <?php if (isset($_POST['Fast']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Fast" checked="checked" /> <label for="Fast" name="Fast"  class="css-label">Fast</label><br />'; 
                  $SelectedAttributeList[] = 'Fast';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Fast" id="Fast" /> <label for="Fast" class="css-label">Fast</label><br />';} ?>                 
                <?php if (isset($_POST['Slow']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Slow" checked="checked" /> <label for="Slow" name="Slow"  class="css-label">Slow</label><br />'; 
                  $SelectedAttributeList[] = 'Slow';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Slow" id="Slow" /> <label for="Slow" class="css-label">Slow</label><br />';} ?>                 
                <?php if (isset($_POST['Still']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Still" checked="checked" /> <label for="Still" name="Still"  class="css-label">Still</label><br />'; 
                  $SelectedAttributeList[] = 'Still';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Still" id="Still" /> <label for="Still" class="css-label">Still</label><br />';} ?>                 
                </fieldset>
                <fieldset><legend>Geometry : </legend>
                <?php if (isset($_POST['Lines']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Lines" checked="checked" /> <label for="Lines" name="Lines"  class="css-label">Lines</label><br />'; 
                  $SelectedAttributeList[] = 'Lines';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Lines" id="Lines" /> <label for="Lines" class="css-label">Lines</label><br />';} ?>                 
                <?php if (isset($_POST['Curves']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Curves" checked="checked" /> <label for="Curves" name="Curves"  class="css-label">Curves</label><br />'; 
                  $SelectedAttributeList[] = 'Curves';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Curves" id="Curves" /> <label for="Curves" class="css-label">Curves</label><br />';} ?>                 
                <?php if (isset($_POST['Triangles']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Triangles" checked="checked" /> <label for="Triangles" name="Triangles"  class="css-label">Triangles</label><br />'; 
                  $SelectedAttributeList[] = 'Triangles';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Triangles" id="Triangles" /> <label for="Triangles" class="css-label">Triangles</label><br />';} ?>                 
                <?php if (isset($_POST['Squares']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Squares" checked="checked" /> <label for="Squares" name="Squares"  class="css-label">Squares</label><br />'; 
                  $SelectedAttributeList[] = 'Squares';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Squares" id="Squares" /> <label for="Squares" class="css-label">Squares</label><br />';} ?>                 
                <?php if (isset($_POST['Circles']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Circles" checked="checked" /> <label for="Circles" name="Circles"  class="css-label">Circles</label><br />'; 
                  $SelectedAttributeList[] = 'Circles';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Circles" id="Circles" /> <label for="Circles" class="css-label">Circles</label><br />';} ?>                 
                <?php if (isset($_POST['Spiral']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Spiral" checked="checked" /> <label for="Spiral" name="Spiral"  class="css-label">Spiral</label><br />'; 
                  $SelectedAttributeList[] = 'Spiral';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Spiral" id="Spiral" /> <label for="Spiral" class="css-label">Spiral</label><br />';} ?>                 
                <?php if (isset($_POST['Noise']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Noise" checked="checked" /> <label for="Noise" name="Noise"  class="css-label">Noise</label><br />'; 
                  $SelectedAttributeList[] = 'Noise';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Noise" id="Noise" /> <label for="Noise" class="css-label">Noise</label><br />';} ?>                 
                <?php if (isset($_POST['Objects']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Objects" checked="checked" /> <label for="Objects" name="Objects"  class="css-label">Objects</label><br />'; 
                  $SelectedAttributeList[] = 'Objects';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Objects" id="Objects" /> <label for="Objects" class="css-label">Objects</label><br />';} ?>                 
                </fieldset>
                <fieldset><legend>Other attributes : </legend>
                <?php if (isset($_POST['Special']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Special" checked="checked" /> <label for="Special" name="Special"  class="css-label">Special</label><br />'; 
                  $SelectedAttributeList[] = 'Special';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Special" id="Special" /> <label for="Special" class="css-label">Special</label><br />';} ?>                 
                <?php if (isset($_POST['Video']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Video" checked="checked" /> <label for="Video" name="Video"  class="css-label">Video</label><br />'; 
                  $SelectedAttributeList[] = 'Video';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Video" id="Video" /> <label for="Video" class="css-label">Video</label><br />';} ?>                 
                <?php if (isset($_POST['Game']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="Game" checked="checked" /> <label for="Game" name="Game"  class="css-label">Game</label><br />'; 
                  $SelectedAttributeList[] = 'Game';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="Game" id="Game" /> <label for="Game" class="css-label">Game</label><br />';} ?>                 
                <?php if (isset($_POST['3D']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="3D" checked="checked" /> <label for="3D" name="3D"  class="css-label">3D</label><br />'; 
                  $SelectedAttributeList[] = '3D';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="3D" id="3D" /> <label for="3D" class="css-label">3D</label><br />';} ?>                 
                <?php if (isset($_POST['TO BE DELETED']) == 1)                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" id="TO BE DELETED" checked="checked" /> <label for="TO BE DELETED" name="TO BE DELETED"  class="css-label">TO BE DELETED</label><br />'; 
                  $SelectedAttributeList[] = 'TO BE DELETED';                                                                                    
                  }                                                                                                                    
                else                                                                                                                   
                { echo '<input type="checkbox" class="css-checkbox" name="TO BE DELETED" id="TO BE DELETED" /> <label for="TO BE DELETED" class="css-label">TO BE DELETED</label><br />';} ?>                 
                </fieldset>
                <div style="clear:both;"></div>
            <input type="submit" value="Filter" />
            <input type="reset" value="Reset" />  
                                                      
        </form>                                       
        <?php                                                                              
        $animationName[] = 'Init';                                   
        $attributeList[] = array ('Special');
        $animationName[] = 'BlackOut';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W', 'Very Dark');
        $animationName[] = 'WhiteOut';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W', 'Very Bright');
        $animationName[] = 'WideFlash';                                   
        $attributeList[] = array ('Fade In/Out', 'Lines', 'Slow', 'Smooth', 'B&W');
        $animationName[] = 'Long Wide Flash ';                                   
        $attributeList[] = array ('Fade In/Out', 'Slow', 'B&W');
        $animationName[] = 'Flash Extreme Left';                                   
        $attributeList[] = array ('Fade In/Out', 'B&W', 'Smooth');
        $animationName[] = 'Flash Left';                                   
        $attributeList[] = array ('Fade In/Out', 'B&W', 'Smooth');
        $animationName[] = 'Flash Center';                                   
        $attributeList[] = array ('Fade In/Out', 'B&W', 'Smooth');
        $animationName[] = 'Flash Right';                                   
        $attributeList[] = array ('Fade In/Out', 'B&W', 'Smooth');
        $animationName[] = 'Flash Extreme Right';                                   
        $attributeList[] = array ('Fade In/Out', 'B&W', 'Smooth');
        $animationName[] = 'Wide Flash Red';                                   
        $attributeList[] = array ('Fade In/Out', 'Slow', 'Red');
        $animationName[] = 'Flash Extreme Left Red';                                   
        $attributeList[] = array ('Fade In/Out', 'Red', 'Smooth');
        $animationName[] = 'Flash Left Red';                                   
        $attributeList[] = array ('Fade In/Out', 'Red', 'Smooth');
        $animationName[] = 'Flash Center Red';                                   
        $attributeList[] = array ('Fade In/Out', 'Red', 'Smooth');
        $animationName[] = 'Flash Right Red';                                   
        $attributeList[] = array ('Fade In/Out', 'Red', 'Smooth');
        $animationName[] = 'Flash Extreme Right Red';                                   
        $attributeList[] = array ('Fade In/Out', 'Red', 'Smooth');
        $animationName[] = 'Fadeout ExtremeLeft';                                   
        $attributeList[] = array ('Fade In/Out', 'Very Dark');
        $animationName[] = 'Fadeout Left';                                   
        $attributeList[] = array ('Fade In/Out', 'Very Dark');
        $animationName[] = 'Fadeout Center';                                   
        $attributeList[] = array ('Fade In/Out', 'Very Dark');
        $animationName[] = 'Fadeout Right';                                   
        $attributeList[] = array ('Fade In/Out', 'Very Dark');
        $animationName[] = 'Fadeout ExtremeRight';                                   
        $attributeList[] = array ('Fade In/Out', 'Very Dark');
        $animationName[] = 'Fadeout';                                   
        $attributeList[] = array ('Fade In/Out', 'Very Dark');
        $animationName[] = 'Fadein';                                   
        $attributeList[] = array ('Fade In/Out', 'Very Bright');
        $animationName[] = 'ExtremeLowLeft';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'ExtremeHiLeft';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'LowLeft';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'HiLeft';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'LowMid';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'HiMid';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'LowRight';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'HiRight';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'ExtremeLowRight';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'ExtremeHiRight';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'PanelFill Left';                                   
        $attributeList[] = array ('Geometric', 'Rhythmic', 'Fast', 'Simple', 'B&W');
        $animationName[] = 'PanelFill Center';                                   
        $attributeList[] = array ('Geometric', 'Rhythmic', 'Fast', 'Simple', 'B&W');
        $animationName[] = 'PanelFill Right';                                   
        $attributeList[] = array ('Geometric', 'Rhythmic', 'Fast', 'Simple', 'B&W');
        $animationName[] = 'PanelFill Line';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Red');
        $animationName[] = 'Opposite Lines No Background';                                   
        $attributeList[] = array ('Geometric', 'Simple', 'Lines', 'Slow', 'B&W');
        $animationName[] = 'Opening Lines';                                   
        $attributeList[] = array ('Geometric', 'Simple', 'Lines', 'B&W');
        $animationName[] = 'Opening Lines Reinit';                                   
        $attributeList[] = array ('Geometric', 'Simple', 'Lines', 'B&W');
        $animationName[] = 'Line Wide Flash ';                                   
        $attributeList[] = array ('Fade In/Out', 'Simple', 'Fast', 'Rhythmic', 'B&W');
        $animationName[] = 'Line Left Flash ';                                   
        $attributeList[] = array ('Fade In/Out', 'Simple', 'Fast', 'Rhythmic', 'B&W');
        $animationName[] = 'Line Center Flash ';                                   
        $attributeList[] = array ('Fade In/Out', 'Simple', 'Fast', 'Rhythmic', 'B&W');
        $animationName[] = 'Line Right Flash ';                                   
        $attributeList[] = array ('Fade In/Out', 'Simple', 'Slow', 'Rhythmic', 'B&W');
        $animationName[] = 'Upwards Line White Out';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Slow', 'B&W');
        $animationName[] = 'Upwards Line';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Very Dark', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Lines 1';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'Lines 2';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'Lines 3';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'Lines 4';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'Lines 5';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'Lines 6';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'Lines 7';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'Lines 8';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'Lines 9';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'Lines 10';                                   
        $attributeList[] = array ('Still', 'Rhythmic', 'B&W');
        $animationName[] = 'Unfolding Lines';                                   
        $attributeList[] = array ('Lines', 'Slow', 'B&W');
        $animationName[] = 'Mugen';                                   
        $attributeList[] = array ('Simple', 'Lines', 'Geometric', 'B&W');
        $animationName[] = 'Turning Single Lines';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Simple', 'B&W', 'Slow', 'Rotating');
        $animationName[] = 'Random Appearing Lines';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'B&W', 'Slow', 'Rotating');
        $animationName[] = 'Nonotak 1';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Simple', 'Rhythmic');
        $animationName[] = 'Nonotak 2';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Simple', 'Rhythmic');
        $animationName[] = 'Nonotak 3';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Simple', 'Rhythmic');
        $animationName[] = 'Nonotak 4';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Simple', 'Rhythmic');
        $animationName[] = 'Nonotak 5';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Simple', 'Rhythmic');
        $animationName[] = 'Nonotak PanelFill Extreme Left';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Simple', 'Rhythmic');
        $animationName[] = 'Nonotak PanelFill Left';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Simple', 'Rhythmic');
        $animationName[] = 'Nonotak PanelFill Center';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Simple', 'Rhythmic');
        $animationName[] = 'Nonotak PanelFill Right';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Simple', 'Rhythmic');
        $animationName[] = 'Nonotak PanelFill Extreme Right';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Simple', 'Rhythmic');
        $animationName[] = 'Nonotak Woosh 1';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Simple', 'Rhythmic');
        $animationName[] = 'Nonotak Woosh 2';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Simple', 'Rhythmic');
        $animationName[] = 'Nonotak Woosh 3';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Simple', 'Rhythmic');
        $animationName[] = 'Nonotak Woosh 4';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Simple', 'Rhythmic');
        $animationName[] = 'Rotating Cut Black';                                   
        $attributeList[] = array ('Atmospheric', 'Fast', 'B&W', 'Rotating');
        $animationName[] = 'Rotating Cut Blue';                                   
        $attributeList[] = array ('Atmospheric', 'Fast', 'Blue', 'Rotating');
        $animationName[] = 'Rotating Cut - Fast';                                   
        $attributeList[] = array ('Atmospheric', 'Fast', 'B&W', 'Rotating');
        $animationName[] = 'Red Diagonal Lines';                                   
        $attributeList[] = array ('Still', 'Lines', 'Rhythmic', 'Red');
        $animationName[] = 'Blue Diagonal Lines';                                   
        $attributeList[] = array ('Still', 'Lines', 'Rhythmic', 'Blue');
        $animationName[] = 'Blue Diagonal Lines2';                                   
        $attributeList[] = array ('Still', 'Lines', 'Rhythmic', 'Blue');
        $animationName[] = 'Blue Diagonal Lines3';                                   
        $attributeList[] = array ('Still', 'Lines', 'Rhythmic', 'Blue');
        $animationName[] = 'Red Diagonal Lines2';                                   
        $attributeList[] = array ('Still', 'Lines', 'Rhythmic', 'Red');
        $animationName[] = 'White Diagonal Lines';                                   
        $attributeList[] = array ('Still', 'Lines', 'Rhythmic', 'B&W');
        $animationName[] = 'White Diagonal Lines2';                                   
        $attributeList[] = array ('Still', 'Lines', 'Rhythmic', 'B&W');
        $animationName[] = 'White Straight Lines';                                   
        $attributeList[] = array ('Still', 'Lines', 'Rhythmic', 'B&W');
        $animationName[] = 'Star - 2 sides';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Slow', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Star - 3 sides';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Slow', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Star - 4 sides';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Slow', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Star - 6 sides';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Slow', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Star - 8 sides';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Slow', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Rotating Circles';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Simple', 'Rotating', 'B&W');
        $animationName[] = 'Joint Circles';                                   
        $attributeList[] = array ('Atmospheric', 'Slow', 'B&W', 'Simple');
        $animationName[] = 'Parallel Worlds - Regular';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Simple', 'Rhythmic');
        $animationName[] = 'Parallel Worlds - Slow';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Simple', 'Rhythmic');
        $animationName[] = 'Parallel Worlds - Red Flash';                                   
        $attributeList[] = array ('Geometric', 'Red', 'Simple', 'Rhythmic');
        $animationName[] = 'Parallel Worlds - Reverse';                                   
        $attributeList[] = array ('Geometric', 'Red', 'Simple', 'Rhythmic');
        $animationName[] = 'MultiCrecy - Very Low Intensity';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic', 'Very Dark');
        $animationName[] = 'MultiCrecy - Low Intensity';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic', 'Violent');
        $animationName[] = 'MultiCrecy - Medium Intensity';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic', 'Violent');
        $animationName[] = 'MultiCrecy - High Intensity';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic', 'Violent');
        $animationName[] = 'MultiCrecy - Hardcore Intensity';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic', 'Violent');
        $animationName[] = 'MultiCrecy - Double Intensity';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic', 'Violent');
        $animationName[] = 'MultiCrecy - Refrain';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic', 'Violent');
        $animationName[] = 'Snake - Single';                                   
        $attributeList[] = array ('Geometric', 'Red', 'Simple');
        $animationName[] = 'Snake - Double';                                   
        $attributeList[] = array ('Geometric', 'Red', 'Simple');
        $animationName[] = 'Snake - Triple';                                   
        $attributeList[] = array ('Geometric', 'Red', 'Simple');
        $animationName[] = 'Snake - Four';                                   
        $attributeList[] = array ('Geometric', 'Red', 'Simple');
        $animationName[] = 'Snake - Five';                                   
        $attributeList[] = array ('Geometric', 'Red', 'Simple');
        $animationName[] = 'Snake - Six';                                   
        $attributeList[] = array ('Geometric', 'Red', 'Simple');
        $animationName[] = 'Moving Sine';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Fast', 'Simple');
        $animationName[] = 'Carglass';                                   
        $attributeList[] = array ('Geometric', 'Slow', 'B&W');
        $animationName[] = 'Va-et-vient 1';                                   
        $attributeList[] = array ('Geometric', 'Fast', 'B&W', 'Rhythmic');
        $animationName[] = 'Va-et-vient 2';                                   
        $attributeList[] = array ('Geometric', 'Fast', 'B&W', 'Rhythmic');
        $animationName[] = 'Impulse White Rectangle - Horizontal';                                   
        $attributeList[] = array ('Geometric', 'Squares', 'B&W', 'Fast', 'Rhythmic');
        $animationName[] = 'Impulse White Rectangle - Vertical';                                   
        $attributeList[] = array ('Geometric', 'Squares', 'B&W', 'Fast', 'Rhythmic');
        $animationName[] = 'Impulse Red Rectangle - Horizontal';                                   
        $attributeList[] = array ('Geometric', 'Squares', 'Red', 'Fast', 'Rhythmic');
        $animationName[] = 'Impulse Red Rectangle - Vertical';                                   
        $attributeList[] = array ('Geometric', 'Squares', 'Red', 'Fast', 'Rhythmic');
        $animationName[] = 'Mixed Lines 1';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Fast', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Mixed Lines 2';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Fast', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Mixed Lines 3';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Fast', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Mixed Lines 4';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Fast', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Mixed Lines 5';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Fast', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Mixed Lines 6';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Fast', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Mixed Lines 7';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Circles', 'Fast', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Mixed Lines 8';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Circles', 'Fast', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Mixed Lines 9';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Fast', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Mixed Lines 10';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Fast', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Mixed Lines 11';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Fast', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Mixed Lines 12';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Fast', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Mixed Lines 13';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Fast', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Mixed Lines 14';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Fast', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Upwards Glitch Lines';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Slow', 'Simple', 'Red', 'Rhythmic');
        $animationName[] = 'Diagonal Glitch Lines';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Fast', 'Simple', 'Red', 'Rhythmic');
        $animationName[] = 'Compressed Lines';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Fast', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'UpwardsGlitchMixedLines';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Fast', 'B&W');
        $animationName[] = 'UpwardsGlitchMixedLines2';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Fast', 'B&W');
        $animationName[] = 'Growing Triangles';                                   
        $attributeList[] = array ('Geometric', 'Triangles', 'Rhythmic', 'Slow', 'B&W');
        $animationName[] = 'Small Square Left';                                   
        $attributeList[] = array ('Geometric', 'Squares', 'Violent', 'Fast', 'B&W', 'Rhythmic');
        $animationName[] = 'Small Square Center';                                   
        $attributeList[] = array ('Geometric', 'Squares', 'Violent', 'Fast', 'B&W', 'Rhythmic');
        $animationName[] = 'Small Square Right';                                   
        $attributeList[] = array ('Geometric', 'Squares', 'Violent', 'Fast', 'B&W', 'Rhythmic');
        $animationName[] = 'Small Squares';                                   
        $attributeList[] = array ('Geometric', 'Squares', 'Violent', 'Fast', 'B&W', 'Rhythmic');
        $animationName[] = 'Moving Lines';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Fast', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Moving Squares';                                   
        $attributeList[] = array ('Objects', 'Squares', 'Slow', 'Simple', 'B&W', 'Rhythmic');
        $animationName[] = 'Orbiting Particles';                                   
        $attributeList[] = array ('Objects', 'Circles', 'Fast', 'B&W', 'Rhythmic');
        $animationName[] = 'Arrow Style';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Fast', 'B&W');
        $animationName[] = 'Single Arrow - Up-Down White';                                   
        $attributeList[] = array ('Geometric', 'Objects', 'Rhythmic', 'Lines', 'Fast', 'B&W');
        $animationName[] = 'Single Arrow - Left-Right White';                                   
        $attributeList[] = array ('Geometric', 'Objects', 'Rhythmic', 'Lines', 'Fast', 'B&W');
        $animationName[] = 'Single Arrow - Right-Left White';                                   
        $attributeList[] = array ('Geometric', 'Objects', 'Rhythmic', 'Lines', 'Fast', 'B&W');
        $animationName[] = 'Single Arrow - Down-Up White';                                   
        $attributeList[] = array ('Geometric', 'Objects', 'Rhythmic', 'Lines', 'Fast', 'B&W');
        $animationName[] = 'Single Arrow - Up-Down Red';                                   
        $attributeList[] = array ('Geometric', 'Objects', 'Rhythmic', 'Lines', 'Fast', 'Red');
        $animationName[] = 'Single Arrow - Left-Right Red';                                   
        $attributeList[] = array ('Geometric', 'Objects', 'Rhythmic', 'Lines', 'Fast', 'Red');
        $animationName[] = 'Single Arrow - Right-Left Red';                                   
        $attributeList[] = array ('Geometric', 'Objects', 'Rhythmic', 'Lines', 'Fast', 'Red');
        $animationName[] = 'Single Arrow - Down-Up Red';                                   
        $attributeList[] = array ('Geometric', 'Objects', 'Rhythmic', 'Lines', 'Fast', 'Red');
        $animationName[] = 'Sweeping Balls And Arrows';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Complex', 'Rhythmic');
        $animationName[] = 'Columns White';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Slow', 'Rhythmic', 'B&W');
        $animationName[] = 'Columns Black';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Slow', 'Rhythmic', 'B&W');
        $animationName[] = 'Columns White Red';                                   
        $attributeList[] = array ('Geometric', 'Slow', 'Red', 'Rhythmic');
        $animationName[] = 'Columns Black Red';                                   
        $attributeList[] = array ('Geometric', 'Slow', 'Red', 'Rhythmic');
        $animationName[] = 'Continuous Triangles Resync ';                                   
        $attributeList[] = array ('Geometric', 'Triangles', 'Slow', 'Rhythmic', 'B&W');
        $animationName[] = 'Continuous Triangles Resync Invert';                                   
        $attributeList[] = array ('Geometric', 'Triangles', 'Slow', 'Rhythmic', 'B&W');
        $animationName[] = 'Continuous Triangles Drift';                                   
        $attributeList[] = array ('Geometric', 'Triangles', 'Slow', 'Rhythmic', 'B&W');
        $animationName[] = 'Continuous Triangles Drift Invert';                                   
        $attributeList[] = array ('Geometric', 'Triangles', 'Slow', 'Rhythmic', 'B&W');
        $animationName[] = 'Beat Circle';                                   
        $attributeList[] = array ('Geometric', 'Fast', 'Circles', 'Simple', 'Rhythmic', 'Red');
        $animationName[] = 'Beat Circle Lines Reinit';                                   
        $attributeList[] = array ('Geometric', 'Fast', 'Circles', 'Lines', 'Simple', 'Rhythmic', 'Red');
        $animationName[] = 'Beat Circle Lines';                                   
        $attributeList[] = array ('Geometric', 'Fast', 'Circles', 'Lines', 'Simple', 'Rhythmic', 'Red');
        $animationName[] = 'Beat Circle Color Lines 1';                                   
        $attributeList[] = array ('Geometric', 'Fast', 'Circles', 'Lines', 'Simple', 'Rhythmic', 'Red');
        $animationName[] = 'Beat Circle Color Lines 2';                                   
        $attributeList[] = array ('Geometric', 'Fast', 'Circles', 'Lines', 'Simple', 'Rhythmic', 'Colorful');
        $animationName[] = 'Atoms - One Electron';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Fast', 'Rhythmic', 'Red');
        $animationName[] = 'Atoms - Two Electrons';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Fast', 'Rhythmic', 'Red');
        $animationName[] = 'Atoms - Three Electrons';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Fast', 'Rhythmic', 'Red');
        $animationName[] = 'Perfect Circle';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Fast', 'Rhythmic', 'Red');
        $animationName[] = 'Tunnel White';                                   
        $attributeList[] = array ('Atmospheric', 'Fast', 'B&W', 'Violent', 'Rhythmic');
        $animationName[] = 'Tunnel Red ';                                   
        $attributeList[] = array ('Atmospheric', 'Fast', 'Red', 'Violent', 'Rhythmic');
        $animationName[] = 'Exploding Circle';                                   
        $attributeList[] = array ('Geometric', 'Simple', 'Circles', 'Fast', 'Rhythmic', 'B&W');
        $animationName[] = 'Exploding Circle Left';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Fast', 'B&W', 'Rhythmic');
        $animationName[] = 'Exploding Circle Right';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Fast', 'Red', 'Rhythmic');
        $animationName[] = 'Color Waves - Regular';                                   
        $attributeList[] = array ('Atmospheric', 'Circles', 'Fast', 'Red', 'Rhythmic');
        $animationName[] = 'Color Waves - Strong';                                   
        $attributeList[] = array ('Atmospheric', 'Circles', 'Fast', 'Red', 'Rhythmic');
        $animationName[] = 'Glitch Triangle';                                   
        $attributeList[] = array ('Geometric', 'Triangles', 'B&W', 'Violent');
        $animationName[] = 'Glitch Line';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'B&W', 'Violent');
        $animationName[] = 'Bar Waves - White';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Lines');
        $animationName[] = 'Bar Waves - Red';                                   
        $attributeList[] = array ('Geometric', 'Red', 'Lines');
        $animationName[] = 'Bar Waves - Blue';                                   
        $attributeList[] = array ('Geometric', 'Blue', 'Lines');
        $animationName[] = 'Fucked Up Sine - 1';                                   
        $attributeList[] = array ('Curves', 'B&W', 'Complex', 'Fast', 'Evolving');
        $animationName[] = 'Fucked Up Sine - 2';                                   
        $attributeList[] = array ('Curves', 'B&W', 'Complex', 'Fast', 'Evolving');
        $animationName[] = 'Fucked Up Sine - 2 - No Reinit';                                   
        $attributeList[] = array ('Curves', 'B&W', 'Complex', 'Fast', 'Evolving');
        $animationName[] = 'Fucked Up Sine - 3';                                   
        $attributeList[] = array ('Curves', 'B&W', 'Complex', 'Fast', 'Evolving');
        $animationName[] = 'Rotating Square';                                   
        $attributeList[] = array ('Geometric', 'Squares', 'Rotating', 'Complex', 'Curves');
        $animationName[] = 'Mandala';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Fast', 'Rhythmic', 'Red', 'Complex');
        $animationName[] = 'Mandala - change shape';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Fast', 'Rhythmic', 'Red', 'Complex');
        $animationName[] = 'Clock';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Red', 'Rhythmic');
        $animationName[] = 'Invert Explode';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Rotating', 'Lines', 'Colorful', 'Fast', 'Rhythmic');
        $animationName[] = 'Crescent';                                   
        $attributeList[] = array ('Atmospheric', 'Lines', 'Red', 'Slow', 'Colorful');
        $animationName[] = 'Trigo Shapes';                                   
        $attributeList[] = array ('Geometric', 'Smooth', 'Red', 'Rhythmic', 'Rotating');
        $animationName[] = 'Newton Pendulum';                                   
        $attributeList[] = array ('Geometric', 'Evolving', 'Simple', 'Circles', 'Lines', 'Fast', 'B&W');
        $animationName[] = 'Circle Pusher Rotate';                                   
        $attributeList[] = array ('Geometric', 'Evolving', 'Circles', 'Rotating', 'B&W', 'Rhythmic');
        $animationName[] = 'Circle Pusher Straight';                                   
        $attributeList[] = array ('Geometric', 'Evolving', 'Circles', 'B&W', 'Rhythmic');
        $animationName[] = 'Patatap 1';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic');
        $animationName[] = 'Patatap 2';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic');
        $animationName[] = 'Patatap 3';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic');
        $animationName[] = 'Patatap 4';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic');
        $animationName[] = 'Patatap 5';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic');
        $animationName[] = 'Patatap 6';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic');
        $animationName[] = 'Patatap 7';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic');
        $animationName[] = 'Patatap 8';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic');
        $animationName[] = 'Patatap 9';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic');
        $animationName[] = 'Patatap 10';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic');
        $animationName[] = 'Patatap 11';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic');
        $animationName[] = 'Patatap 12';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic');
        $animationName[] = 'Patatap 13';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic');
        $animationName[] = 'Patatap 14';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic');
        $animationName[] = 'Patatap 15';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic');
        $animationName[] = 'Patatap 16';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic');
        $animationName[] = 'Patatap with audio';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Simple', 'Rhythmic', 'AudioInput');
        $animationName[] = 'Shadows';                                   
        $attributeList[] = array ('Rotating', 'Fast', 'B&W');
        $animationName[] = 'SpiralTriangle';                                   
        $attributeList[] = array ('Geometric', 'Spiral', 'B&W', 'Slow');
        $animationName[] = 'Pulse Star';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'B&W', 'Slow');
        $animationName[] = 'Arrow Shape';                                   
        $attributeList[] = array ('Geometric', 'Triangles', 'Slow', 'B&W');
        $animationName[] = 'Moire';                                   
        $attributeList[] = array ('Atmospheric', 'Complex', 'Slow', 'B&W');
        $animationName[] = 'Tumbler';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Simple', 'Lines', 'Rotating');
        $animationName[] = 'Super formula';                                   
        $attributeList[] = array ('Complex', 'Evolving', 'Atmospheric', 'Rhythmic', 'B&W');
        $animationName[] = 'HypnoAudio';                                   
        $attributeList[] = array ('Geometric', 'Red', 'Evolving', 'Rhythmic', 'AudioInput');
        $animationName[] = 'HypnoAudio - without audio (manual)';                                   
        $attributeList[] = array ('Geometric', 'Red', 'Evolving', 'Rhythmic');
        $animationName[] = 'Snow';                                   
        $attributeList[] = array ('Atmospheric', 'Noise', 'B&W', 'Very Dark');
        $animationName[] = 'Noise : InitFlasher';                                   
        $attributeList[] = array ('Video', 'Noise', 'B&W');
        $animationName[] = 'Rain';                                   
        $attributeList[] = array ('Atmospheric', 'Noise', 'B&W', 'Very Dark');
        $animationName[] = 'White Noise';                                   
        $attributeList[] = array ('Noise', 'B&W');
        $animationName[] = 'White Noise Crescendo';                                   
        $attributeList[] = array ('Noise', 'B&W');
        $animationName[] = 'Hyper Speed';                                   
        $attributeList[] = array ('Atmospheric', 'Lines', 'Fast', 'B&W');
        $animationName[] = 'Random BW Flow';                                   
        $attributeList[] = array ('Noise', 'Complex', 'B&W');
        $animationName[] = 'Random Smoke Particles';                                   
        $attributeList[] = array ('Noise', 'Evolving', 'Atmospheric', 'B&W');
        $animationName[] = 'Periodic Noise';                                   
        $attributeList[] = array ('Atmospheric', 'B&W', 'Noise');
        $animationName[] = 'DoubleGradient transition';                                   
        $attributeList[] = array ('Fade In/Out', 'Atmospheric', 'B&W', 'Smooth', 'Slow');
        $animationName[] = 'Sonar';                                   
        $attributeList[] = array ('Fade In/Out', 'Slow', 'Smooth', 'B&W');
        $animationName[] = 'SonarAllWhite';                                   
        $attributeList[] = array ('Fade In/Out', 'Slow', 'Smooth', 'B&W');
        $animationName[] = 'Thunder Lines Init';                                   
        $attributeList[] = array ('Atmospheric', 'Lines', 'Fast', 'B&W', 'Smooth');
        $animationName[] = 'Thunder Lines - More Lines';                                   
        $attributeList[] = array ('Atmospheric', 'Lines', 'Fast', 'B&W', 'Smooth');
        $animationName[] = 'Thunder Lines - Less Lines';                                   
        $attributeList[] = array ('Atmospheric', 'Lines', 'Fast', 'B&W', 'Smooth');
        $animationName[] = 'Dark Snakes';                                   
        $attributeList[] = array ('Fade In/Out', 'Slow', 'Smooth');
        $animationName[] = 'Bright Snakes';                                   
        $attributeList[] = array ('Fade In/Out', 'Slow', 'Smooth');
        $animationName[] = 'Milktank';                                   
        $attributeList[] = array ('Atmospheric', 'Objects', 'Fast', 'B&W', 'Evolving');
        $animationName[] = 'Flashing Dots Border';                                   
        $attributeList[] = array ('Atmospheric', 'Circles', 'Slow', 'B&W');
        $animationName[] = 'Light Fusion';                                   
        $attributeList[] = array ('Atmospheric', 'Fast', 'B&W', 'Violent');
        $animationName[] = 'BW Triangles';                                   
        $attributeList[] = array ('Geometric', 'Evolving', 'B&W');
        $animationName[] = 'Color Vertex';                                   
        $attributeList[] = array ('Atmospheric', 'Fast', 'Rhythmic', 'Colorful', 'Complex', 'Evolving');
        $animationName[] = 'Gloubiboulga';                                   
        $attributeList[] = array ('Geometric', 'Atmospheric', 'Complex', 'Colorful', 'Fast');
        $animationName[] = 'CarreMarshall';                                   
        $attributeList[] = array ('Geometric', 'Squares', 'B&W', 'Smooth', 'Slow');
        $animationName[] = 'MarshallStrobo';                                   
        $attributeList[] = array ('Violent', 'Geometric', 'Squares', 'B&W', 'Smooth', 'Slow', 'B&W');
        $animationName[] = 'Strobo normal';                                   
        $attributeList[] = array ('Violent', 'B&W', 'Fast');
        $animationName[] = 'StroboX';                                   
        $attributeList[] = array ('Fade In/Out', 'Violent', 'Lines', 'Fast', 'B&W');
        $animationName[] = 'Dynamic Angle Lines - White';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Simple', 'Lines', 'Rotating', 'Rhythmic');
        $animationName[] = 'Dynamic Angle Lines - Half Red';                                   
        $attributeList[] = array ('Geometric', 'Red', 'Simple', 'Lines', 'Rotating', 'Rhythmic');
        $animationName[] = 'Dynamic Angle Lines - Red';                                   
        $attributeList[] = array ('Geometric', 'Red', 'Simple', 'Lines', 'Rotating', 'Rhythmic');
        $animationName[] = 'Spots';                                   
        $attributeList[] = array ('Violent', 'Geometric', 'Lines', 'Fast', 'B&W');
        $animationName[] = 'StroboLine';                                   
        $attributeList[] = array ('Violent', 'Geometric', 'Lines', 'Fast', 'B&W');
        $animationName[] = 'Random White Line Flash';                                   
        $attributeList[] = array ('Geometric', 'B&W', 'Simple', 'Rhythmic', 'Violent');
        $animationName[] = 'StroboRed';                                   
        $attributeList[] = array ('Violent', 'Fast', 'Red');
        $animationName[] = 'Spots Multi Color';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Blue', 'Colorful', 'Violent');
        $animationName[] = 'Strobo Line Color';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Blue', 'Colorful', 'Violent');
        $animationName[] = 'Strobo Color';                                   
        $attributeList[] = array ('Geometric', 'Simple', 'Blue', 'Violent');
        $animationName[] = 'Triangle Strobo';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Violent', 'Fast', 'B&W');
        $animationName[] = 'Triangle Strobo 2';                                   
        $attributeList[] = array ('Geometric', 'Triangles', 'Fast', 'Red', 'Blue', 'Violent');
        $animationName[] = 'Hypno Flash Triangle';                                   
        $attributeList[] = array ('Geometric', 'Triangles', 'Rhythmic', 'Red', 'Violent');
        $animationName[] = 'Fauve Random Flash';                                   
        $attributeList[] = array ('Atmospheric', 'Red', 'Simple');
        $animationName[] = 'Red Noise Shape 1';                                   
        $attributeList[] = array ('Noise', 'Red', 'Fast');
        $animationName[] = 'Red Noise Shape 2';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Noise', 'Red', 'Fast');
        $animationName[] = 'Red Noise Shape 3';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Noise', 'Red', 'Fast', 'Violent');
        $animationName[] = 'Red Noise Shape 4';                                   
        $attributeList[] = array ('Geometric', 'Triangles', 'Noise', 'Red', 'Fast', 'Violent');
        $animationName[] = 'Red Noise Shape 5';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Noise', 'Red', 'Fast');
        $animationName[] = 'Red Noise Shape 6';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Noise', 'Red', 'Fast', 'Violent');
        $animationName[] = 'Fusee Up';                                   
        $attributeList[] = array ('Fade In/Out', 'B&W', 'Fast');
        $animationName[] = 'Fusee Down';                                   
        $attributeList[] = array ('Fade In/Out', 'B&W', 'Fast');
        $animationName[] = 'Fusee Left';                                   
        $attributeList[] = array ('Fade In/Out', 'B&W', 'Fast');
        $animationName[] = 'Fusee Right';                                   
        $attributeList[] = array ('Fade In/Out', 'B&W', 'Fast');
        $animationName[] = 'FuseeCenterHorizontal';                                   
        $attributeList[] = array ('Fade In/Out', 'B&W', 'Fast');
        $animationName[] = 'FuseeCenterVertical';                                   
        $attributeList[] = array ('Fade In/Out', 'B&W', 'Fast');
        $animationName[] = 'Double Fusee';                                   
        $attributeList[] = array ('Fade In/Out', 'Fast', 'B&W');
        $animationName[] = 'Fusee Up Red';                                   
        $attributeList[] = array ('Fade In/Out', 'Fast', 'Red');
        $animationName[] = 'Fusee Down Red';                                   
        $attributeList[] = array ('Fade In/Out', 'Fast', 'Red');
        $animationName[] = 'Fusee Left Red';                                   
        $attributeList[] = array ('Fade In/Out', 'Fast', 'Red');
        $animationName[] = 'Fusee Right Red';                                   
        $attributeList[] = array ('Fade In/Out', 'Fast', 'Red');
        $animationName[] = 'Fusee Center Horizontal Red';                                   
        $attributeList[] = array ('Fade In/Out', 'Fast', 'Red');
        $animationName[] = 'Fusee Center Vertical Red';                                   
        $attributeList[] = array ('Fade In/Out', 'Fast', 'Red');
        $animationName[] = 'Responsive Circles BW';                                   
        $attributeList[] = array ('Atmospheric', 'Slow', 'B&W');
        $animationName[] = 'Responsive Circles';                                   
        $attributeList[] = array ('Atmospheric', 'Slow', 'Blue');
        $animationName[] = 'Manual Circle';                                   
        $attributeList[] = array ('Fade In/Out', 'Geometric', 'Circles', 'Simple', 'Slow', 'Blue');
        $animationName[] = 'Automatic Circle';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Simple', 'Slow', 'Blue');
        $animationName[] = 'Waveform';                                   
        $attributeList[] = array ('Atmospheric', 'Colorful');
        $animationName[] = 'Worms';                                   
        $attributeList[] = array ('Objects', 'Circles', 'Smooth', 'Blue', 'Slow');
        $animationName[] = 'Kaleido Triangle';                                   
        $attributeList[] = array ('Geometric', 'Blue', 'Complex', 'Evolving');
        $animationName[] = 'Rhombus';                                   
        $attributeList[] = array ('Geometric', 'Colorful', 'Smooth', 'Slow');
        $animationName[] = 'Glitch Diagonal Lines';                                   
        $attributeList[] = array ('Atmospheric', 'Lines', 'Rhythmic', 'Blue');
        $animationName[] = 'Particles Explode';                                   
        $attributeList[] = array ('Fade In/Out', 'Fast', 'Rhythmic', 'Blue');
        $animationName[] = 'Symmetry';                                   
        $attributeList[] = array ('Atmospheric', 'Smooth', 'Complex', 'Colorful');
        $animationName[] = 'PixelLines';                                   
        $attributeList[] = array ('Atmospheric', 'Colorful', 'Smooth');
        $animationName[] = 'Circle Contour';                                   
        $attributeList[] = array ('Atmospheric', 'Circles', 'Slow', 'Very Dark', 'Blue');
        $animationName[] = 'Color Explode';                                   
        $attributeList[] = array ('Atmospheric', 'Objects', 'Slow', 'Colorful');
        $animationName[] = 'Color Rain';                                   
        $attributeList[] = array ('Atmospheric', 'Lines', 'Fast', 'Colorful');
        $animationName[] = 'Warp Speed';                                   
        $attributeList[] = array ('Fade In/Out', 'Fast', 'Colorful');
        $animationName[] = 'Digital Hex Particles';                                   
        $attributeList[] = array ('Fade In/Out', 'Colorful', 'Very Dark', 'Lines', 'Slow');
        $animationName[] = 'Red Arc Transition';                                   
        $attributeList[] = array ('Fade In/Out', 'Red', 'Circles', 'Fast');
        $animationName[] = 'Blue Arc Transition';                                   
        $attributeList[] = array ('Fade In/Out', 'Blue', 'Circles', 'Fast');
        $animationName[] = 'Shutter';                                   
        $attributeList[] = array ('Geometric', 'Atmospheric', 'Red', 'Slow');
        $animationName[] = 'Butterfly';                                   
        $attributeList[] = array ('Atmospheric', 'Evolving', 'Slow', 'Very Dark', 'Blue');
        $animationName[] = 'Bezier Flowers';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Complex', 'Rhythmic', 'Colorful');
        $animationName[] = 'Light Painting';                                   
        $attributeList[] = array ('3D', 'Fast', 'Objects', 'Colorful', 'Rhythmic');
        $animationName[] = 'Particles Flow';                                   
        $attributeList[] = array ('Atmospheric', 'Slow', 'Blue');
        $animationName[] = 'Particles Flow Red';                                   
        $attributeList[] = array ('Atmospheric', 'Slow', 'Red', 'Smooth');
        $animationName[] = 'Flower';                                   
        $attributeList[] = array ('Atmospheric', 'Circles', 'Evolving', 'Colorful', 'Rhythmic');
        $animationName[] = 'Double Flowers';                                   
        $attributeList[] = array ('Atmospheric', 'Slow', 'Red');
        $animationName[] = 'Fireflies';                                   
        $attributeList[] = array ('Atmospheric', 'Red', 'Complex', 'Slow');
        $animationName[] = 'Fire Noise Squares';                                   
        $attributeList[] = array ('Atmospheric', 'Noise', 'Red', 'Evolving', 'Smooth');
        $animationName[] = 'Blood Ski';                                   
        $attributeList[] = array ('Atmospheric', 'Fast', 'Red');
        $animationName[] = 'Mechanic Lines';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Red', 'Slow');
        $animationName[] = 'Red Glowing Balls 1';                                   
        $attributeList[] = array ('Geometric', 'Red', 'Slow');
        $animationName[] = 'Red Glowing Balls 2';                                   
        $attributeList[] = array ('Geometric', 'Red', 'Slow');
        $animationName[] = 'Red vs Black vs White';                                   
        $attributeList[] = array ('Fade In/Out', 'Circles', 'Red', 'Slow');
        $animationName[] = 'Perlin Color ';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Red', 'Random', 'Slow');
        $animationName[] = 'Wind particles';                                   
        $attributeList[] = array ('Atmospheric', 'Smooth', 'Red', 'Evolving');
        $animationName[] = 'Rorschach 1';                                   
        $attributeList[] = array ('Random', 'Complex', 'Fast', 'Smooth', 'Red', 'B&W');
        $animationName[] = 'Rorschach 2';                                   
        $attributeList[] = array ('Random', 'Complex', 'Fast', 'Smooth', 'Red', 'B&W');
        $animationName[] = 'Rorschach 3';                                   
        $attributeList[] = array ('Random', 'Complex', 'Fast', 'Smooth', 'Red', 'B&W');
        $animationName[] = 'Rorschach 4';                                   
        $attributeList[] = array ('Random', 'Complex', 'Fast', 'Smooth', 'Red', 'B&W');
        $animationName[] = 'Rorschach 5';                                   
        $attributeList[] = array ('Random', 'Complex', 'Fast', 'Smooth', 'Red', 'B&W');
        $animationName[] = 'RorschachSetColor';                                   
        $attributeList[] = array ('Special', 'Random', 'Complex', 'Fast', 'Smooth', 'Red', 'B&W');
        $animationName[] = 'RorschachSetBlack&White';                                   
        $attributeList[] = array ('Special', 'Random', 'Complex', 'Fast', 'Smooth', 'Red', 'B&W');
        $animationName[] = 'Progressive Red';                                   
        $attributeList[] = array ('Fade In/Out', 'Atmospheric', 'Slow', 'Red');
        $animationName[] = 'Weird Square';                                   
        $attributeList[] = array ('Atmospheric', 'Slow', 'Red');
        $animationName[] = 'Light Blobs';                                   
        $attributeList[] = array ('Objects', 'Circles', 'Atmospheric', 'Red');
        $animationName[] = 'Red Meta Balls';                                   
        $attributeList[] = array ('Objects', 'Circles', 'Atmospheric', 'Red');
        $animationName[] = 'Reverse Triangles';                                   
        $attributeList[] = array ('Geometric', 'Fast', 'Red', 'Rhythmic', 'Violent');
        $animationName[] = '3D Big Ass Cube';                                   
        $attributeList[] = array ('3D', 'Slow', 'Red', 'Rhythmic');
        $animationName[] = '3D Corner Cube';                                   
        $attributeList[] = array ('3D', 'Slow', 'Red', 'Rhythmic');
        $animationName[] = '3D Glitch Cube';                                   
        $attributeList[] = array ('3D', 'Slow', 'Red', 'Rhythmic', 'Violent');
        $animationName[] = '3D No Glitch Cube';                                   
        $attributeList[] = array ('3D', 'Slow', 'Red', 'Rhythmic');
        $animationName[] = '3D Jerky Cube';                                   
        $attributeList[] = array ('3D', 'Slow', 'B&W', 'Rhythmic', 'Violent');
        $animationName[] = '3D Moving Jerky Cube';                                   
        $attributeList[] = array ('3D', 'Slow', 'B&W', 'Rhythmic', 'Violent');
        $animationName[] = '3D Double Cube';                                   
        $attributeList[] = array ('3D', 'Slow', 'Red', 'Rhythmic', 'Violent');
        $animationName[] = '3D Single Pyramid';                                   
        $attributeList[] = array ('3D', 'Slow', 'B&W', 'Rhythmic');
        $animationName[] = '3D Multiple Pyramids';                                   
        $attributeList[] = array ('3D', 'Slow', 'Red', 'Rhythmic');
        $animationName[] = 'Energy Grid';                                   
        $attributeList[] = array ('Atmospheric', 'Rhythmic', 'Geometric', 'Triangles', 'Red', 'Fast', 'Rotating');
        $animationName[] = 'Random Paint';                                   
        $attributeList[] = array ('Atmospheric', 'Smooth', 'Random', 'Red');
        $animationName[] = 'Red Wave';                                   
        $attributeList[] = array ('Atmospheric', 'Smooth', 'Slow', 'Red');
        $animationName[] = 'Diagonal Color';                                   
        $attributeList[] = array ('Atmospheric', 'Geometric', 'Smooth', 'Slow', 'Colorful');
        $animationName[] = 'Scope';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Fast', 'Rotating', 'Evolving', 'Red');
        $animationName[] = 'SquareWaveGenerator';                                   
        $attributeList[] = array ('Lines', 'Rhythmic', 'Smooth', 'Red');
        $animationName[] = 'Falling Circles';                                   
        $attributeList[] = array ('Atmospheric', 'Circles', 'Slow', 'Blue');
        $animationName[] = 'Set Exploding Particles';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Evolving', 'Rhythmic', 'Blue');
        $animationName[] = 'Release Exploding Particles';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Evolving', 'Rhythmic', 'Blue');
        $animationName[] = 'Tesselate';                                   
        $attributeList[] = array ('Geometric', 'Squares', 'Red', 'Blue');
        $animationName[] = 'Patchwork';                                   
        $attributeList[] = array ('Atmospheric', 'Fast', 'Rectangles', 'Colorful', 'Fast');
        $animationName[] = 'Vines';                                   
        $attributeList[] = array ('Objects', 'Lines', 'Fast', 'Red', 'Evolving');
        $animationName[] = 'Night Road';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Rhythmic', 'Blue');
        $animationName[] = 'Slasher';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Objects', 'Fast', 'Colorful', 'Rhythmic');
        $animationName[] = 'Color Beat';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Colorful', 'Fast', 'Rhythmic');
        $animationName[] = 'Color Beat Stroboline';                                   
        $attributeList[] = array ('Geometric', 'Lines', 'Colorful', 'Fast', 'Violent');
        $animationName[] = 'Color Beat White Strobo Triangle';                                   
        $attributeList[] = array ('Geometric', 'Triangles', 'B&W', 'Fast', 'Violent');
        $animationName[] = 'Color Beat Transition';                                   
        $attributeList[] = array ('Fade In/Out', 'Lines', 'Colorful', 'Fast');
        $animationName[] = 'Neko Jiru';                                   
        $attributeList[] = array ('Special', 'Video', 'Simple', 'Colorful');
        $animationName[] = 'Letter Explode';                                   
        $attributeList[] = array ('Special', 'Objects', 'Fast', 'B&W', 'Red');
        $animationName[] = 'Rotozoom White';                                   
        $attributeList[] = array ('Atmospheric', 'Complex', 'Fast', 'Rotating', 'B&W');
        $animationName[] = 'Rotozoom 1';                                   
        $attributeList[] = array ('Atmospheric', 'Rotating', 'Complex', 'Red');
        $animationName[] = 'Rotozoom 2';                                   
        $attributeList[] = array ('Atmospheric', 'Rotating', 'Complex', 'Red');
        $animationName[] = 'Rotozoom 3';                                   
        $attributeList[] = array ('Atmospheric', 'Rotating', 'Complex', 'Red');
        $animationName[] = 'Spiraluality';                                   
        $attributeList[] = array ('Rotating', 'Smooth', 'Slow', 'Red', 'Spiral', 'Evolving');
        $animationName[] = 'Rotating Half Circle';                                   
        $attributeList[] = array ('Atmospheric', 'Red', 'Complex', 'Slow', 'Smooth', 'Rotating');
        $animationName[] = 'Sliced Wave - White';                                   
        $attributeList[] = array ('Atmospheric', 'White', 'Circles', 'Rhythmic');
        $animationName[] = 'Sliced Wave - Red';                                   
        $attributeList[] = array ('Atmospheric', 'Red', 'Circles', 'Rhythmic');
        $animationName[] = 'Arc Wave';                                   
        $attributeList[] = array ('Objects', 'Circles', 'Geometric', 'B&W');
        $animationName[] = 'Red Sun';                                   
        $attributeList[] = array ('Atmospheric', 'Red', 'Circles', 'Rhythmic');
        $animationName[] = 'Arc Rot Green';                                   
        $attributeList[] = array ('Atmospheric', 'Rhythmic', 'Geometric', 'Circles', 'Slow', 'Colorful', 'Rotating');
        $animationName[] = 'Arc Rot Red';                                   
        $attributeList[] = array ('Atmospheric', 'Rhythmic', 'Geometric', 'Circles', 'Slow', 'Red', 'Rotating');
        $animationName[] = 'Hypno Pendulum';                                   
        $attributeList[] = array ('Spiral', 'Red', 'Lines', 'Geometric');
        $animationName[] = 'LargeWheel Pendulum';                                   
        $attributeList[] = array ('Spiral', 'Red', 'Lines', 'Geometric');
        $animationName[] = 'Single Square Spiral';                                   
        $attributeList[] = array ('Geometric', 'Spiral', 'Rotating', 'Red', 'Rhythmic');
        $animationName[] = 'Dual Square Spiral';                                   
        $attributeList[] = array ('Geometric', 'Spiral', 'Rotating', 'Red', 'Rhythmic');
        $animationName[] = 'Complex Spiral Reinit';                                   
        $attributeList[] = array ('Atmospheric', 'Spiral', 'Rotating', 'Complex', 'Red');
        $animationName[] = 'Complex Spiral';                                   
        $attributeList[] = array ('Atmospheric', 'Spiral', 'Rotating', 'Complex', 'Red');
        $animationName[] = 'Outward Spiral White';                                   
        $attributeList[] = array ('Fade In/Out', 'Spiral', 'Slow', 'Evolving', 'B&W');
        $animationName[] = 'Outward Spiral Blue';                                   
        $attributeList[] = array ('Fade In/Out', 'Spiral', 'Slow', 'Evolving', 'Blue');
        $animationName[] = 'Outward Spiral Red';                                   
        $attributeList[] = array ('Fade In/Out', 'Spiral', 'Slow', 'Evolving', 'Red');
        $animationName[] = 'Fast Outward Spiral Red';                                   
        $attributeList[] = array ('Spiral', 'Circles', 'Slow', 'Red');
        $animationName[] = 'Inwards Spiral';                                   
        $attributeList[] = array ('Spiral', 'Blue', 'Lines', 'Red', 'Geometric');
        $animationName[] = 'Inwards Spiral Reverse';                                   
        $attributeList[] = array ('Spiral', 'Blue', 'Lines', 'Red', 'Geometric');
        $animationName[] = 'Hypno Spiral Red';                                   
        $attributeList[] = array ('Spiral', 'Fast', 'Red');
        $animationName[] = 'Electric Spiral';                                   
        $attributeList[] = array ('Geometric', 'Spiral', 'Evolving', 'Red');
        $animationName[] = 'Cosmo Curve ';                                   
        $attributeList[] = array ('Geometric', 'Spiral', 'Red', 'Evolving');
        $animationName[] = 'Cosmo Curve Reinit';                                   
        $attributeList[] = array ('Spiral', 'Red', 'Lines', 'Complex', 'Evolving');
        $animationName[] = 'Kaleido';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Evolving', 'Random', 'Red', 'Blue', 'Complex');
        $animationName[] = 'Kaleido Inverse';                                   
        $attributeList[] = array ('Geometric', 'Circles', 'Evolving', 'Random', 'Red', 'Blue', 'Complex');
        $animationName[] = 'Revolution Lines';                                   
        $attributeList[] = array ('Geometric', 'Atmospheric', 'Circles', 'Colorful', 'Fast');
        $animationName[] = 'Disco Star';                                   
        $attributeList[] = array ('Atmospheric', 'Rotating', 'Slow', 'Colorful');
        $animationName[] = 'Worm Hole';                                   
        $attributeList[] = array ('Atmospheric', 'Rotating', 'Circles', 'Lines', 'Slow', 'Blue', 'Evolving', 'Rhythmic');
        $animationName[] = 'Tetris - 1 player game';                                   
        $attributeList[] = array ('Game');
        $animationName[] = 'Pong - 2 player game';                                   
        $attributeList[] = array ('Game');
        $animationName[] = 'Shift Pixels Up / Slow';                                   
        $attributeList[] = array ('Special', 'Slow', 'Rhythmic');
        $animationName[] = 'Shift Pixels Down / Slow';                                   
        $attributeList[] = array ('Special', 'Slow', 'Rhythmic');
        $animationName[] = 'Shift Pixels Left / Slow';                                   
        $attributeList[] = array ('Special', 'Slow', 'Rhythmic');
        $animationName[] = 'Shift Pixels Right / Slow';                                   
        $attributeList[] = array ('Special', 'Slow', 'Rhythmic');
        $animationName[] = 'Shift Pixels Up / Fast';                                   
        $attributeList[] = array ('Special', 'Fast', 'Rhythmic');
        $animationName[] = 'Shift Pixels Down / Fast';                                   
        $attributeList[] = array ('Special', 'Fast', 'Rhythmic');
        $animationName[] = 'Shift Pixels Left / Fast';                                   
        $attributeList[] = array ('Special', 'Fast', 'Rhythmic');
        $animationName[] = 'Shift Pixels Right / Fast';                                   
        $attributeList[] = array ('Special', 'Fast', 'Rhythmic');
        $animationName[] = 'Shred Pixels Vertical / Slow';                                   
        $attributeList[] = array ('Special', 'Slow', 'Rhythmic', 'Violent');
        $animationName[] = 'Shred Pixels Horizontal / Slow';                                   
        $attributeList[] = array ('Special', 'Slow', 'Rhythmic', 'Violent');
        $animationName[] = 'Shred Pixels Vertical / Slow';                                   
        $attributeList[] = array ('Special', 'Fast', 'Rhythmic', 'Violent');
        $animationName[] = 'Shred Pixels Horizontal / Slow';                                   
        $attributeList[] = array ('Special', 'Fast', 'Rhythmic', 'Violent');
        $animationName[] = 'Audio Monitoring';                                   
        $attributeList[] = array ('Atmospheric', 'Red', 'Circles', 'Rhythmic', 'AudioInput');
        $animationName[] = 'Display FFT - Kick';                                   
        $attributeList[] = array ('Geometric', 'Simple', 'AudioInput');
        echo filterAllAttributes($attributeList, $SelectedAttributeList, $animationName);  
        ?>                                                                                 
      </div>
    </div>
  </body>
</html>
<?php                                                                                           
function printIfAttributeIsRegistered($List, $animationNbr, $attributeStringArray, $animName) { 
  $numberOfMatchingAttributes = 0;                                                              
                                                                                                
  foreach($List[$animationNbr] as $element) {                                                   
    if (in_array($element, $attributeStringArray)) {                                            
    $numberOfMatchingAttributes += 1;                                                           
    }                                                                                           
  }                                                                                             
                                                                                                
                                                                                                
  if ($numberOfMatchingAttributes == count($attributeStringArray)) {                            
    echo '<p>       ';                                                                          
    echo '<img src="../GIF/PlayMeLightSetup';                                                  
    echo $animationNbr;                                                                         
    echo '.gif"  class="floatingimage" alt="Animation number = ';                           
    echo $animationNbr;                                                                         
    echo '" /> </br>    Animation Number ';                                                    
    echo $animationNbr;                                                                         
    echo ' - MIDI note : ';                                                                     
    echo getMidiNote($animationNbr);                                                            
    echo ' </br>';                                                                              
    echo $animName[$animationNbr];                                                              
    echo ' </br>';                                                                              
    echo 'Related attributes : [';                                                              
    foreach($List[$animationNbr] as $attr) {                                                    
      echo '  ';                                                                                
      echo $attr;                                                                               
      echo '  ';                                                                                
    }                                                                                           
    echo ']';                                                                                   
    echo '</p> </br>';                                                                          
  }                                                                                             
}                                                                                               
                                                                                                
function filterAllAttributes($List, $attributeString, $animName) {                              
  for ($numero = 0; $numero < count($List); $numero++) {                                        
    printIfAttributeIsRegistered($List, $numero, $attributeString, $animName);                  
  }                                                                                             
}                                                                                               
                                                                                                
function getMidiNote($animationNbr) {                                                           
  if ($animationNbr <= 127) {                                                                   
    echo 'D#8 / Velocity = ';                                                                    
    $tempNote = $animationNbr;                                                                   
    echo $tempNote;                                                                              
  }                                                                                              
  else if ($animationNbr <= 254) {                                                               
    echo 'E8 / Velocity = ';                                                                     
    $tempNote = $animationNbr - 127;                                                             
    echo $tempNote;                                                                              
  }                                                                                              
  else if ($animationNbr <= 381) {                                                               
    echo 'F8 / Velocity = ';                                                                     
    $tempNote = $animationNbr - 254;                                                             
    echo $tempNote;                                                                              
  }                                                                                              
}                                                                                               
?>                                                                                              
