<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
body {
  background-color: #4d4d4d;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
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
          <li><a href="blist.do">�Խ���</a></li>
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



   <h1 style="text-align: center; color: pink;">�Խ���</h1>
   <div class="container">
      <table class="table table-hover">
         <thead>
            <tr style="background-color: #ffbdc4">
               <th>�Խ��ǹ�ȣ</th>
               <th>&nbsp;����</th>
               <th>�ۼ���</th>
               <th style="text-align: center;">�ۼ���</th>
               <th style="text-align: center;">��ȸ��</th>
               
            </tr>
         </thead>

         <tbody>
            <c:forEach items="${list }" var="dto">
               <tr class="active">
                  <td style="background-color: #1a0a00; color: white">${dto.num }</td>
                  <td><a href="bread.do?num=${dto.num }"> <c:forEach
                           begin="1" end="${dto.repIndent }">
            &nbsp; </c:forEach> ${dto.title }
                  </a></td>
                  <td>${dto.id }</td>
                  <td style="text-align: center;">${dto.writeday }</td>
                  <td style="text-align: center;">${dto.readcnt }</td>
                  
               </tr>
            </c:forEach>
         </tbody>
      </table>
   <button type="button" onclick="location.href='binsertui.do'" class="btn btn-dark">�۾���</button>
   </div>
   <jsp:include page="bpage.jsp" />
</body>
</html>