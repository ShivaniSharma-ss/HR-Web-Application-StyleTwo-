package com.thinking.machines.hr.beans;
public class MessageBean implements java.io.Serializable
{
private String message;
private String heading;
private boolean generateTwoButtons;
private boolean generateButtons;
private String buttonOneText;
private String buttonTwoText;
private String buttonOneAction;
private String buttonTwoAction;
public MessageBean()
{
this.message="";
this.heading="";
this.generateButtons=false;
this.generateTwoButtons=false;
}
public void setMessage(String message)
{
this.message=message;
}
public String getMessage()
{
return this.message;
}
public void setHeading(String heading)
{
this.heading=heading;
}
public String getHeading()
{
return this.heading;
}
public void setGenerateButtons(boolean generateButtons)
{
this.generateButtons=generateButtons;
}
public boolean getGenerateButtons()
{
return this.generateButtons;
}
public void setGenerateTwoButtons(boolean generateTwoButtons)
{
this.generateTwoButtons=generateTwoButtons;
}
public boolean getGenerateTwoButtons()
{
return this.generateTwoButtons;
}
public void setButtonOneText(String ButtonOneText)
{
this.buttonOneText=ButtonOneText;
}
public String getButtonOneText()
{
return this.buttonOneText;
}
public void setButtonTwoText(String ButtonTwoText)
{
this.buttonTwoText=ButtonTwoText;
}
public String getButtonTwoText()
{
return this.buttonTwoText;
}
public void setButtonOneAction(String ButtonOneAction)
{
this.buttonOneAction=ButtonOneAction;
}
public String getButtonOneAction()
{
return this.buttonOneAction;
}
public void setButtonTwoAction(String ButtonTwoAction)
{
this.buttonTwoAction=ButtonTwoAction;
}
public String getButtonTwoAction()
{
return this.buttonTwoAction;
}
}