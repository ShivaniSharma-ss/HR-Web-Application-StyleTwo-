<tr style='cursor:pointer' onClick='selectEmployee(this,"${employeeBean.employeeId}")'>
<td style='text-align:right'>${serialNumber}</td>
<td>${employeeBean.employeeId}</td>
<td>${employeeBean.name}</td>
<td>${employeeBean.designation}</td>
<td style='text-align:center'><a href='/styleone/editEmployee?employeeId=${employeeBean.employeeId}'>Edit</a></td>
<td style='text-align:center'><a href='/styleone/confirmDeleteEmployee?employeeId=${employeeBean.employeeId}'>Delete</a></td>
</tr>
