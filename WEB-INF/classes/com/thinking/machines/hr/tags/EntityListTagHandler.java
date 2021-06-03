package com.thinking.machines.hr.tags;
import javax.servlet.jsp.tagext.*;
import java.util.*;
import java.io.*;
import javax.servlet.jsp.*;
import java.lang.reflect.*;
public class EntityListTagHandler extends TagSupport
{
private int index;
private List list;
private String populatorClass;
private String populatorMethod;
private String name;
public void setPopulatorClass(String populatorClass)
{
this.populatorClass=populatorClass;
}
public void setPopulatorMethod(String populatorMethod)
{
this.populatorMethod=populatorMethod;
}
public void setName(String name)
{
this.name=name;
}
public String getPopulatorMethod()
{
return this.populatorMethod;
}
public String getPopulatorClass()
{
return this.populatorClass;
}
public String getName()
{
return this.name;
}
public EntityListTagHandler()
{
reset();
}
private void reset()
{
this.index=0;
this.list=null;
this.populatorMethod=null;
this.populatorClass=null;
this.name=null;
}
public int doStartTag()
{
try
{
if(name==null || name.trim().length()==0) return super.SKIP_BODY;
Class c=Class.forName(populatorClass);
Object obj=c.newInstance();
Class parameters[]=new Class[0];
Method method=c.getMethod(populatorMethod,parameters);
list=(List)method.invoke(obj);
if(list==null) return super.SKIP_BODY;
if(list.size()==0) return super.SKIP_BODY;
Object bean=list.get(index);
pageContext.setAttribute(name,bean,PageContext.REQUEST_SCOPE);
pageContext.setAttribute("serialNumber",new Integer(index+1),PageContext.REQUEST_SCOPE);
index++; 
return super.EVAL_BODY_INCLUDE;
}
catch(Throwable t)
{
//some logging act should be a=done later on (in next styles)
return super.SKIP_BODY;
}
}
public int doAfterBody()
{
if(index==list.size()) return super.SKIP_BODY;
Object bean=list.get(index);
pageContext.setAttribute(name,bean,pageContext.REQUEST_SCOPE);
pageContext.setAttribute("serialNumber",index+1,pageContext.REQUEST_SCOPE);
index++;
return super.EVAL_BODY_AGAIN;
}
public int doEndTag()
{
this.reset();
return super.EVAL_PAGE;
}
}
