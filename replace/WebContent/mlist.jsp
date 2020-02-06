<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
button[type=button] {
  width: 10%;
  background-color: #808080;
  color: white;
  padding: 10px 2px;
  margin: 0px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit] {
  width: 10%;
  background-color: #808080;
  color: white;
  padding: 10px 2px;
  margin: 0px 0;
  border: none;
  border-radius: 10x;
  cursor: pointer;
}


</style>
</head>

<body>



<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">���̳�</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="mlist.do">ȸ��</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li><a href="#">Page 2</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="minsertui.do"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="mloginui.do"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>

 <c:choose>
   <c:when test="${not empty login }">
   ${login.name } �� ȯ���մϴ�. <a href="mlogout.do">�α׾ƿ�</a>
   </c:when>
   <c:otherwise>
   <a href="mloginui.do">�α���</a>
   </c:otherwise>

</c:choose>

<h2 style="text-align: center; color: pink;">ȸ�� ����</h2>


<div class="container">
  <table class="table table-striped">
    <thead>
      <tr style="background-color: #ffbdc4">
        <th>���̵�</th>
        <th>�̸�</th>
        <th>�Խñۺ���</th>
        <th style="text-align:center;">������</th>
      </tr>
    </thead>
    <tbody>
       <c:forEach items="${list }" var="var">
      <tr class="active">
   <td style="background-color: #1a0a00; color: white">
   <a href="mread.do?id=${var.id}" style="color:#808080">${var.id }</a></td>
   <td> ${var.name }</td>
   
   <c:if test="${var.nKey !=1000}">
   <td><a href="mdelete.do?id=${var.id }">����</a></td>
   </c:if>
   <c:if test="${var.nKey ==1000}">
   <td>����</td>
   </c:if>
   <c:if test="${var.nKey !=1001}">
   <td><a href="blist.do?id=${var.id }">�Խñۺ���</a></td>
   </c:if>
   <c:if test="${var.nKey !=1000}" >
    <td style="text-align: center;">${var.signupday}</td>
   </c:if>
</c:forEach>
      </tr>
      
    </tbody>
  </table>
</div>
<div>
<jsp:include page="mpage.jsp" /><hr>
<button type="button" style="text-align: center;" class="btn btn-dark" onclick="location.href='mlist.do'">ȸ�����</button>
</div>
</body>
</html>