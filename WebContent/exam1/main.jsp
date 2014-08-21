<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Chapter_5</title>
    <link href="http://fonts.googleapis.com/css?family=Henny+Penny" rel="stylesheet" />
    <link href="styles/style.css" rel="stylesheet" />
    <link href="styles/header.css" rel="stylesheet" />
    <link href="styles/section.css" rel="stylesheet" />
    <link href="styles/aside.css" rel="stylesheet" />
    <link href="styles/footer.css" rel="stylesheet" />
</head>
<body>
    
    <jsp:include page="views/header.html" />
    <div id="content">
	    <jsp:include page="views/section.html" />
    	<jsp:include page="views/aside.html" />
        
        
    </div>
    <jsp:include page="views/footer.html" />
    
</body>
</html>