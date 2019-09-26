<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Michail
  Date: 8/27/2019
  Time: 7:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<a href="/home">home</a>
<%--<ol>
     <c:forEach var="furniture" items="${allFurniture}">

    <li>${furniture.id}  name:     price:  age:  description:  brand:
            material:
      <a href="/deleteFurniture/${furniture.id}">delete</a>
      <a href="/updateFurniture/${furniture.id}">update</a>  </li>
  </c:forEach>
</ol>--%>
<table align="left">
    <tr align="center">
        <td>brand</td>
        <td>description</td>
        <td>name</td>
        <td>age</td>
        <td>price</td>
        <td>country</td>
        <td>sex</td>
        <td>material</td>
    </tr>
    <c:forEach var="furniture" items="${allFurniture}">
    <tr align="center">
        <td>${furniture.brand}</td>
        <td>${furniture.description}</td>
        <td>${furniture.name}</td>
        <td>${furniture.age}</td>
        <td>${furniture.price}</td>
        <td>${furniture.country.name}</td>
        <td>${furniture.sex}</td>
        <td>${furniture.material}</td>

    </tr>
    </c:forEach>
    </table>

</body>
</html>
