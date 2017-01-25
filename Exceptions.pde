
//////////////////////////////////////////////////////////////
// Custom exceptions to be raised in case of serious errors //
//////////////////////////////////////////////////////////////

public class SerialPortException extends Exception {

  private static final long serialVersionUID = 3951181732955456485L;

  public SerialPortException(String s) {
    super(s);
  }
}


public class NoSerialPortFoundException extends Exception {

  private static final long serialVersionUID = -6432383124399209942L;
  
  public NoSerialPortFoundException(String s) {
    super(s);
  }
}

public class FixtureDescriptionParseException extends Exception {

  private static final long serialVersionUID = 1432363154395209342L;
  
  public FixtureDescriptionParseException(String s) {
    super(s);
  }
}

public class UndefinedFixtureException extends Exception {

  private static final long serialVersionUID = 1022115134292153760L;
  
  public UndefinedFixtureException(String s) {
    super(s);
  }
}