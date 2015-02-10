<%@ taglib uri="http://java.seabornlee.cn" prefix="gs" %>
<%@ taglib uri="http://another.seabornlee.cn" prefix="anotherModule" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="fromTagFile" %>
<html>
<head>
    <title>Tag example</title>
</head>
<body>

<br/>
<fromTagFile:helloworld from="index.jsp">
    <gs:helloWorld/>
</fromTagFile:helloworld>
</body>
</html>