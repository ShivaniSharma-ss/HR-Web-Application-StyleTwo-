package com.thinking.machines.hr.bl;
import com.thinking.machines.hr.dl.*;
import com.thinking.machines.hr.beans.*;
import java.util.*;
public class DesignationBL
{
public List<DesignationBean>getAll()
{
List<DesignationBean> designations=new LinkedList<>();
try
{
DesignationDAO designationDAO=new DesignationDAO();
List<DesignationDTO> dlDesignations=designationDAO.getAll();
DesignationBean designationBean;
for(DesignationDTO dlDesignation:dlDesignations)
{
designationBean=new DesignationBean();
designationBean.setCode(dlDesignation.getCode());
designationBean.setTitle(dlDesignation.getTitle());
designations.add(designationBean);
}
}catch(DAOException daoException)
{
System.out.println(daoException.getMessage());
}
return designations;
}
}