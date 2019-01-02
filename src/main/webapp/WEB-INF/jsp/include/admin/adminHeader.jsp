<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix='fmt'%>

<html>
<head>
<title>how2up</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="adminStyle/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="adminStyle/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">
<link href="adminStyle/css/bootstrap-admin-theme.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" href="md/css/editormd.css" />

	<script src="adminStyle/js/jquery/2.0.0/jquery.min.js"></script>
	<script src="md/editormd.min.js"></script>
	<script src="adminStyle/js/bootstrap/3.3.6/bootstrap.min.js"></script>

<script>
  function search(){
   var name = document.getElementById("keyWord");
   if(name.value.length==0){
     alert("关键字不能为空");
     return false;
   }

   

   return true;

  }
</script>
</head>
<body >

	<hr/>
	<div class="container">
		<div class="row">