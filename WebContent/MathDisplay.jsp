<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Some more EL operations</title>
</head>
<body>
	<h1>EL math and Logic</h1>
	<span>2 + 2 = ${2 + 2}</span><br>
	<span>2 * 6 = ${2 * 6}</span><br>
	<span>16 / 8 = ${16 / 8}</span><br>
	<span>Is 32 > 50? -- ${32 > 50}</span><br>
	<span>Is 32 > 50?</span><input type="text" value="${32 gt 50}" /><br>
	<span>Is 100 < 1000? -- ${100 < 1000}</span><br>
	<span>Is 100 < 1000</span><input type="text" value="${100 lt 1000}" /><br>
	<span>100 == 100</span><input type="text" value="${100 eq 100}" /><br>
	<span>Is (100 < 1000 && 10 < 100) -- ${(100 < 1000 && 10 < 100)}</span><br>
	<span>Is (100 > 1000 || 10 < 100) -- ${(100 > 1000 || 10 < 100)}</span><br>
</body>
</html>