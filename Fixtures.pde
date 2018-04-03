
//////////////////////////////////////////////////////////////
//   DMX Fixture library based on the available XML files   //
//////////////////////////////////////////////////////////////

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.*;
import java.io.IOException;
import org.xml.sax.SAXException;

final String XMLDESC_ROOTNAME                   = "Fixture";

final String XMLDESC_NAME                       = "Name";
final String XMLDESC_MANUFACTURER               = "Manufacturer";
final String XMLDESC_TYPE                       = "Type";
final String XMLDESC_COMMENT                    = "Comment";
final String XMLDESC_NBCHANNELS                 = "NbChannels";
final String XMLDESC_CHANNELTYPE                = "ChannelType";
final String XMLDESC_CHANNELTYPE_INDEX          = "index";
final String XMLDESC_CHANNELTYPE_ATTRIBUTE      = "attribute";
final String XMLDESC_CHANNELTYPE_OPTION         = "option";
final String XMLDESC_CHANNELTYPE_OPTION_ARG     = "option_argument";
final String XMLDESC_CHANNELTYPE_CH_LINK        = "ch_link";
final String XMLDESC_CHANNELSET                 = "ChannelSet";
final String XMLDESC_CHANNELSET_NAME            = "name";
final String XMLDESC_CHANNELSET_FROM_DMX        = "from_dmx";
final String XMLDESC_CHANNELSET_TO_DMX          = "to_dmx";
final String XMLDESC_CHANNELSET_TO_PROPORTIONAL = "proportional";
final String XMLDESC_CHANNELSET_RECOMMENDED     = "recommended";
final String XMLDESC_CHANNELSET_RANGE           = "range";

final String FIXTURE_TYPE_STROBE                = "Strobe";
final String FIXTURE_TYPE_MOVING_HEAD           = "Moving Head";
final String FIXTURE_TYPE_PAR                   = "PAR";
final String FIXTURE_TYPE_SCANNER               = "Scanner";
final String FIXTURE_TYPE_LASER                 = "Laser";
final String FIXTURE_TYPE_BLINDER               = "Blinder";
final String FIXTURE_TYPE_LED_STRIP             = "LED Strip";
final String FIXTURE_TYPE_FOG                   = "Fog";

ArrayList<Fixture> fixtureLibrary;

// Structure description:
// Fixture
//  |  ChannelDesc: big function
//  |   |   ChannelSet: (from/to dmx val: subfunction)
//  |   |   ChannelSet: (from/to dmx val: subfunction)
//  |  ChannelDesc: big function
//  |   |   ChannelSet: (from/to dmx val: subfunction)
//  |   ...



void readFixtureFiles() {
  
  fixtureLibrary = new ArrayList<Fixture>();
  
  //Parse all data folders, and create Fixture objects
  String[] fixtureTypes   = {FIXTURE_TYPE_STROBE, FIXTURE_TYPE_MOVING_HEAD, FIXTURE_TYPE_PAR, FIXTURE_TYPE_SCANNER, FIXTURE_TYPE_LASER, FIXTURE_TYPE_BLINDER, FIXTURE_TYPE_LED_STRIP, FIXTURE_TYPE_FOG};
    
  for (String directoryToParse: fixtureTypes) {
    try {
      String fullDirectoryPath = dataPath("") + "/Fixtures/" + directoryToParse;

      File dir = new File(fullDirectoryPath);
      if (dir.list().length>0) {
        String[] children = dir.list();
        for (String child : children) {
          // Only check for XML files, disregard OSX's Finder cookie
          if (child.contains(".xml")) {
            outputLog.println("Found a DMX fixture description file: " + fullDirectoryPath + "/" + child);
            parseFixtureXML(fullDirectoryPath + "/" + child);
          }
        }
      }
    }
    catch (Exception e) {
      outputLog.println("Exception while parsing fixture XMLs : " + e + " - " + dataPath("") + "/Fixtures/" + directoryToParse);
    }
  }
}

// Get a fixture from its name
Fixture getFixtureFromName(String name) {
  for (Fixture fixture: fixtureLibrary) {
    if (name.equals(fixture.getFullName()) || name.equals(fixture.getShortName())) {
      //We've got the right fixture
      return fixture;
    }
  }
  // We couldn't find a corresponding fixture
  Fixture voidFixture = new Fixture();
  return voidFixture;

}

void parseFixtureXML(String path) {
  
  final DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
          
  try {
    
    final DocumentBuilder builder = factory.newDocumentBuilder();
    Document document= builder.parse(new File(path));
    final Element root = document.getDocumentElement();
    String rootName = root.getNodeName();
    
    if (rootName.equals(XMLDESC_ROOTNAME)) {
    
      Fixture newFixture = new Fixture();
    
      final NodeList rootNodes = root.getChildNodes();
      final int nbRootNodes = rootNodes.getLength();
      
      for (int i = 0; i<nbRootNodes; i++) {
        if(rootNodes.item(i).getNodeType() == Node.ELEMENT_NODE) {
          final Element elem = (Element) rootNodes.item(i);

          if (elem.getNodeName().equals(XMLDESC_NAME)) {
            newFixture.setName(elem.getTextContent());
          }
          if (elem.getNodeName().equals(XMLDESC_MANUFACTURER)) {
            newFixture.setManufacturer(elem.getTextContent());
          }
          if (elem.getNodeName().equals(XMLDESC_TYPE)) {
            newFixture.setType(elem.getTextContent());
          }
          if (elem.getNodeName().equals(XMLDESC_NBCHANNELS)) {
            newFixture.setNbChannels(int(elem.getTextContent()));
          }
          if (elem.getNodeName().equals(XMLDESC_COMMENT)) {
            newFixture.setComment(elem.getTextContent());
          }
          if (elem.getNodeName().equals(XMLDESC_CHANNELTYPE)) {
            // Basic checks on the channel type declaration
            checkIfAttrDefinedInElementAndThrowException(elem, XMLDESC_CHANNELTYPE_INDEX,     "Bad Fixture XML description - channel type index is not defined");
            checkIfAttrDefinedInElementAndThrowException(elem, XMLDESC_CHANNELTYPE_ATTRIBUTE, "Bad Fixture XML description - channel type attribute is not defined");

            ChannelDesc newChannelDesc = new ChannelDesc( int(elem.getAttribute(XMLDESC_CHANNELTYPE_INDEX)), elem.getAttribute(XMLDESC_CHANNELTYPE_ATTRIBUTE) );

            if (checkIfAttrDefinedInElement(elem, XMLDESC_CHANNELTYPE_OPTION)) {
              newChannelDesc.setOption(elem.getAttribute(XMLDESC_CHANNELTYPE_OPTION));

              if (checkIfAttrDefinedInElement(elem, XMLDESC_CHANNELTYPE_OPTION_ARG)) {
                newChannelDesc.setOptionArgument(elem.getAttribute(XMLDESC_CHANNELTYPE_OPTION_ARG));
              }
            }

            if (checkIfAttrDefinedInElement(elem, XMLDESC_CHANNELTYPE_CH_LINK)) {
              newChannelDesc.setChannelLink(int(elem.getAttribute(XMLDESC_CHANNELTYPE_CH_LINK)));
            }

            final NodeList channelTypeNodes = elem.getChildNodes();
            final int nbChannelTypeNodes = channelTypeNodes.getLength();
            
            for (int j = 0; j<nbChannelTypeNodes; j++) {
              if(channelTypeNodes.item(j).getNodeType() == Node.ELEMENT_NODE) {
                final Element subElem = (Element) channelTypeNodes.item(j);
                if (subElem.getNodeName().equals(XMLDESC_CHANNELSET)) {
                  
                  checkIfAttrDefinedInElementAndThrowException(subElem, XMLDESC_CHANNELSET_NAME,     "Bad Fixture XML description - channel set name is not defined");
                  checkIfAttrDefinedInElementAndThrowException(subElem, XMLDESC_CHANNELSET_FROM_DMX, "Bad Fixture XML description - channel set from_dmx is not defined");
                  checkIfAttrDefinedInElementAndThrowException(subElem, XMLDESC_CHANNELSET_TO_DMX,   "Bad Fixture XML description - channel set to_dmx is not defined");

                  ChannelSet newChannelSet = new ChannelSet(int(subElem.getAttribute(XMLDESC_CHANNELSET_FROM_DMX)), int(subElem.getAttribute(XMLDESC_CHANNELSET_TO_DMX)), subElem.getAttribute(XMLDESC_CHANNELSET_NAME));

                  if (checkIfAttrDefinedInElement(subElem, XMLDESC_CHANNELSET_TO_PROPORTIONAL)) {
                    newChannelSet.set_proportional(subElem.getAttribute(XMLDESC_CHANNELSET_TO_PROPORTIONAL));
                  }
                  if (checkIfAttrDefinedInElement(subElem, XMLDESC_CHANNELSET_RECOMMENDED)) {
                    newChannelSet.setRecommended(parseBooleanString(subElem.getAttribute(XMLDESC_CHANNELSET_RECOMMENDED)));
                  }

                  if (checkIfAttrDefinedInElement(subElem, XMLDESC_CHANNELSET_RANGE)) {
                    newChannelSet.setChannelRange(int(subElem.getAttribute(XMLDESC_CHANNELSET_RANGE)));
                  }

                  newChannelDesc.addChannelSet(newChannelSet);

                }
              }
            }

            newFixture.addChannelDesc(newChannelDesc);
          }  
        }
      }

      outputLog.println(newFixture);
      // Very last step : once the file has been parsed, if no exception has been raised up until now, the description is valid
      // Add the new fixture to the library
      fixtureLibrary.add(newFixture);
    }


    
  }
  catch (final FixtureDescriptionParseException e) {
      e.printStackTrace();
      println(e);
  }
  catch (final ParserConfigurationException e) {
      e.printStackTrace();
      println(e);
  }
  catch (final SAXException e) {
      e.printStackTrace();
      println(e);
  }
  catch (final IOException e) {
      e.printStackTrace();
      println(e);
  }        
}

void checkIfAttrDefinedInElementAndThrowException(Element elem, String attribute, String assertion) throws FixtureDescriptionParseException {
  if (elem.getAttribute(attribute).equals("")) {
    throw new FixtureDescriptionParseException(assertion);
  }
}

boolean checkIfAttrDefinedInElement(Element elem, String attribute) {
  if (elem.getAttribute(attribute).equals("")) {
    return false;
  }
  else {
    return true;
  }
}

boolean parseBooleanString(String boolString) {
  if (boolString.equals("true")) {
    return true;
  }
  else {
    return false;
  }
}

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////


class Fixture {
  
  String Name;
  String Manufacturer;
  String Type;                          //Family of the fixture: Strobe, Moving Head, PAR, Scanner, Laser, Blinder, LED Strip or Fog Machine
  String Comment;
  int NbChannels;
  ArrayList<ChannelDesc> Channels;
  String[] channelDict;                 //Dictionary of the channels' index/function

  Fixture() {
    this.Name = "";
    this.Manufacturer = "";
    this.Type = "";
    this.Comment = "";
    this.NbChannels = 0;
    this.Channels = new ArrayList<ChannelDesc>();
    this.channelDict = new String[0];
  }

  
  
  void setName(String name) {
    this.Name = name;
  }

  void setManufacturer(String manufacturer) {
    this.Manufacturer = manufacturer;
  }

  void setType(String type) {
    this.Type = type;
  }

  void setComment(String comment) {
    this.Comment = comment;
  }

  void setNbChannels(int nbchannels) {
    this.NbChannels = nbchannels;
  }

  void addChannelDesc(ChannelDesc channel) {
    Channels.add(channel);
    buildChannelIndexDict();
  }

  String getFullName() {
    return this.Manufacturer + " " + this.Name;
  }

  String getShortName() {
    return this.Name;
  }

  String getType() {
    return this.Type;
  }

  int getNbChannels() {
    return this.NbChannels;
  }

  boolean isValidFixture() {
    if (this.Name.equals("")) {
      return false;
    }
    else if (this.Type.equals("")) {
      return false;
    }
    else if (this.NbChannels == 0) {
      return false;
    }
    else if (this.Channels.size() == 0) {
      return false;
    }
    else {
      return true;
    }
  }
  
  String toString() {
    //return "DMX Fixture (" + type + ") with " + nbModes + " modes - " + name;
    String description = "DMX Fixture (" + this.Type + ") " + this.Manufacturer + " - " + this.Name + ": \n";
    description += " --- \n";
    for (ChannelDesc channel: this.Channels) {
      description += "\t" + channel.toString();
    }
    description += " --------------------------------------- ";
    return description;
  }

  void buildChannelIndexDict() {
    this.channelDict = new String[this.NbChannels];

    for (int i=0; i<this.NbChannels; i++) {
      
      // Necessary to do it this way: for some fixtures, some channels might as well not be defined
      String function = "";
      for (ChannelDesc channel: this.Channels) {
        if (channel.getIndex() == i) {
          function = channel.getChannelDescription();
          break;
        }
      }

      this.channelDict[i] = function;
    }
  }

  ///Accessor functions

  // Get the index of the first channel whose name is equal to the specified argument
  int getChannelIndexCorrespondingToFunction(String function) {
    int ret_val = -1;
    for (ChannelDesc channel: this.Channels) {
      if (channel.getChannelDescription().equals(function)) {
        ret_val = channel.getIndex();
        break;
      }
    }
    return ret_val;
  }

  // Get the indexes of all channels whose name is equal to the specified argument
  IntList getAllChannelIndexesCorrespondingToFunction(String function) {
    
    IntList ret_val = new IntList();
    for (ChannelDesc channel: this.Channels) {
      if (channel.getChannelDescription().equals(function)) {
        ret_val.append(channel.getIndex());
      }
    }
    return ret_val;
  }

  String getOptionCorrespondingToChannelIndex(int index) {
    return getChannelCorrespondingToIndex(index).getOption();
  }

  ChannelDesc getChannelCorrespondingToIndex(int index) {
    ChannelDesc ret_channel = new ChannelDesc();

    for (ChannelDesc channel: this.Channels) {
      if (channel.getIndex() == index) {
        ret_channel = channel;
        break;
      }
    }

    return ret_channel;
  }

  int getLinkedChannelIndexCorrespondingToIndex(int index) {
    return getChannelCorrespondingToIndex(index).getChannelLink();
  }

  ArrayList<ChannelDesc> getAllChannelsWithDefaultVal() {
    ArrayList<ChannelDesc> channels = new ArrayList<ChannelDesc>();

    for (ChannelDesc channel: this.Channels) {
      for (ChannelSet channelSet: channel.channelSets) {
        if (channelSet.isRecommended()) {
          channels.add(channel);
          break;
        }
      }
    }

    return channels;
  }

}


class ChannelDesc {
  
  int index;                                  // Current channel's index -> chaddress = initial device's address + index
  String channelDescription;
  String option;
  String option_argument;
  int ch_link = -1;                           // Used to define an additional "fine" channel - the dmx value is then calculated on 16 bits, MSB go on the first channel, LSB go on the fine channel

  ArrayList<ChannelSet> channelSets;
  
  ChannelDesc() {
    this.index = -1;
    this.channelDescription = "";
    this.channelSets = new ArrayList<ChannelSet>();
    this.option = "";
    this.option_argument = "";
  }

  ChannelDesc(int index, String desc) {
    this.index = index;
    this.channelDescription = desc;
    this.channelSets = new ArrayList<ChannelSet>();
    this.option = "";
    this.option_argument = "";
  }

  ChannelDesc(int index, String desc, String option) {
    this.index = index;
    this.channelDescription = desc;
    this.channelSets = new ArrayList<ChannelSet>();
    this.option = option;
    this.option_argument = "";
  }
  
  void addChannelSet(ChannelSet set) {
    this.channelSets.add(set);
  }

  String toString() {
    String description = "Channel index " + this.index + addNecessaryTabs(5, "Channel index " + this.index + "") + "|||" +"\t" + this.channelDescription;
    if (option.equals("") == false) {
      description += "\t" + "(" + option + ")";
    }
    description += "\n";
    for (ChannelSet channelSet: channelSets) {
      description += "\t\t" + channelSet.toString() + "\n";
    }
    return description;
  }

  int getIndex() {
    return index;
  }

  String getChannelDescription() {
    return channelDescription;
  }

  String getOption() {
    return this.option;
  }

  String getOptionArgument() {
    return this.option_argument;
  }

  ArrayList<ChannelSet> getAllChannelSets() {
    return channelSets;
   }

  int getChannelLink() {
    return ch_link;
  }


  void setOption(String option) {
    this.option = option;
  }

  void setOptionArgument(String option_arg) {
    this.option_argument = option_arg;
  }  

  void setChannelLink(int index) {
    ch_link = index;
  }
  
}

class ChannelSet {
  int from_dmx;
  int to_dmx;
  String subfunction;
  boolean proportional = false;
  boolean proportional_increasing = false;    // Not used if proportional is not set to true
  boolean recommended = false;                // This particular channel set is recommended - the set's base value, from_dmx, shall therefore be used as default value for the channel
  int range = -1;                             // Physical range of the parameter - for example, in a moving head, pan=540°, or tilt=270°
  
  ChannelSet(int rangeMin, int rangeMax, String subfunction) {
    this.from_dmx = rangeMin;
    this.to_dmx = rangeMax;
    this.subfunction = subfunction;
  }
  
  ChannelSet(int rangeMin, int rangeMax) {
    rangeMin = rangeMin;
    rangeMax = rangeMax;
    subfunction = "";
  }

  void setRecommended(boolean val) {
    recommended = true;
  }

  void set_proportional(String prop) {
    if (prop.equals("increasing") || prop.equals("Increasing")) {
      proportional = true;
      proportional_increasing = true;
    }
    else if (prop.equals("decreasing") || prop.equals("Decreasing")) {
      proportional = true;
      proportional_increasing = false;
    }
    else {
      proportional = false;
      proportional_increasing = false;
    }
  }

  void setChannelRange(int range) {
    this.range = range;
  }

  String getSubfunction() {
    return subfunction;
  }

  int getFrom_dmx() {
    return from_dmx;
  }

  int getTo_dmx() {
    return to_dmx;
  }

  boolean isProportional() {
    return proportional;
  }

  boolean isProportional_Increasing() {
    return proportional_increasing;
  }

  boolean isRecommended() {
    return recommended;
  }

  int getChannelRange() {
    return range;
  }


  String toString() {
    String description = "Function:" + "\t" + this.subfunction;
    description += addNecessaryTabs(7, this.subfunction);
    description += "From:\t" + this.from_dmx;
    description += addNecessaryTabs(2, this.from_dmx + "");
    description += "To:\t" + this.to_dmx;
    description += addNecessaryTabs(2, this.to_dmx + "");
    if (this.proportional) {
      description += "\tproportional=";
      if (this.proportional_increasing) {
        description += "increasing";
      }
      else {
        description += "decreasing";
      }
    }
    if (this.recommended == true) {
      description += "\trecommended=true";
    }
    
    return description;
  }


}


// Small tool used to format text
String addNecessaryTabs(int maxTab, String text) {
  String tabs = "";
  for (int a=0; a<max(0, (maxTab - ( text.length() ) / 4 )); a++) {
    tabs += "\t";
  }
  return tabs;
}

