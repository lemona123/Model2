<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dept Append Form</title>
<%@ include file="/WEB-INF/common/link.jspf" %>
</head>
<body>
<hr>
<h1>부서 추가 </h1>
<a href="<c:url value="/employee?cmd=deptlist"/>" class="btn">부서 리스트로...</a>
<hr>

<p class="text-warning">${errors.globalError.defaultMessage}</p>
<form action="<c:url value="/employee?cmd=deptappend"/>" method="post">

<div class="form-group">
<label for="deptno">Deptno</label>
<input id="deptno" type="text" name="deptno" value="${dept.deptno}" class="form-control"/>
<p style="color:red;">${errors.getFieldError("deptno").defaultMessage}</p>
</div>

<div class="form-group">
<label for="dname">DName</label>
<input id="dname" type="text" name="dname" value="${dept.dname}" class="form-control"/>
<p style="color:red;">${errors.getFieldError("dname").defaultMessage}</p>
</div>

<div class="form-group">
<label for="loc">Loc</label>
<input id="loc" type="text" name="loc" value="${dept.loc}" class="form-control"/>
<p style="color:red;">${errors.getFieldError("loc").defaultMessage}</p>
</div>

<input type="submit" value="append"/>

</form>

</body>
</html>