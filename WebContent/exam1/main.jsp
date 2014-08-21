<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Chapter_5</title>
    <link href="http://fonts.googleapis.com/css?family=Henny+Penny" rel="stylesheet" />
    <link href="style.css" rel="stylesheet" />
    <link href="header.css" rel="stylesheet" />
    <link href="section.css" rel="stylesheet" />
    <link href="aside.css" rel="stylesheet" />
    <link href="footer.css" rel="stylesheet" />
</head>
<body>
    
    <jsp:include page="header.html" />
    <div id="content">
	    <jsp:include page="section.html" />
    	<jsp:include page="aside.html" />
        
        
    </div>
    <jsp:include page="footer.html" />
    
</body>
</html>