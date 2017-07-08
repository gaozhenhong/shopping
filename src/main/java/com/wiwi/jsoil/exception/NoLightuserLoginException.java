package com.wiwi.jsoil.exception;

public class NoLightuserLoginException extends Exception
{
  private static final long serialVersionUID = 2131223431L;

  public NoLightuserLoginException(String msg)
  {
    super(msg);
  }

  public NoLightuserLoginException(Exception e) {
    super(e);
  }

  public NoLightuserLoginException(String msg, Throwable cause) {
    super(msg, cause);
  }
}