<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix ='tm' %>
<tm:Module name='DESIGNATION' />
<jsp:useBean id='designationBean' scope='request' class='com.thinking.machines.hr.beans.DesignationBean' />
<jsp:useBean id='errorBean' scope='request' class='com.thinking.machines.hr.beans.ErrorBean' />
<jsp:include page='/MasterPageTopSection.jsp'/>
<script src='/styletwo/js/DesignationDeleteForm.js'> </script>
<h2>Designation(Delete Module)</h2>
<form method='post' action='/styletwo/DeleteDesignation.jsp' onSubmit='return validateForm(this)'>
<tm:FormID/>
Designation : <b>${designationBean.title}</b><br>
<input type='hidden' id='code' name='code' value='${designationBean.code}'>
Are you sure you want to delete this designation ?<br><br>
<button type='submit'>Yes</button>
<button type='Button' onClick='cancelDeletion()'>No</button>
</form>
<form id='cancelDeletionForm' action='/styletwo/Designations.jsp'>
<jsp:include page='/MasterPageBottomSection.jsp'/>