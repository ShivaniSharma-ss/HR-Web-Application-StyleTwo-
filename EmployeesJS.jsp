<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix ='tm' %>
<script>
var employee;
<tm:EntityList populatorClass='com.thinking.machines.hr.bl.EmployeeBL' populatorMethod='getAll' name='employeeBean'>
//populating Employees in  employees Array
employee=new Employee();
employee.employeeId="${employeeBean.employeeId}";
employee.name="${employeeBean.name}";
employee.designationCode=${employeeBean.designationCode};
employee.designation="${employeeBean.designation}";
employee.dateOfBirth="${employeeBean.dateOfBirth}";
employee.gender="${employeeBean.gender}";
employee.isIndian=${employeeBean.isIndian};
employee.basicSalary=${employeeBean.basicSalary};
employee.panNumber="${employeeBean.getPANNumber()}";
employee.aadharCardNumber="${employeeBean.aadharCardNumber}";
employees[${serialNumber-1}]=employee;
</tm:EntityList>
</script>