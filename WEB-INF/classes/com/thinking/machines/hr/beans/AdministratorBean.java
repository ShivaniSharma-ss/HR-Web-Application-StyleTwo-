package com.thinking.machines.hr.beans;
public class AdministratorBean implements java.io.Serializable,Comparable<AdministratorBean>
{
private String username;
private String password;
public AdministratorBean()
{
this.username="";
this.password="";
}
public void setUsername(String username)
{
this.username=username;
}
public String getUsername()
{
return this.username;
}
public void setPassword(String password)
{
this.password=password;
}
public String getPassword()
{
return this.password;
}
public boolean equals(Object object)
{
if(!(object instanceof AdministratorBean)) return false;
AdministratorBean other=(AdministratorBean)object;
return this.username.equals(other.username);
}
public int compareTo(AdministratorBean other)
{
return this.username.compareToIgnoreCase(other.username);
}
public int hashCode()
{
return username.hashCode();
}
}