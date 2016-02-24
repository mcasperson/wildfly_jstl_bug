<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml"  prefix="x" %>
<%@ taglib tagdir="/WEB-INF/tags"			       prefix="tags"%>

<c:import var="testXml" url="test.xml"/>
<x:parse var="myXml" xml="${testXml}"/>

<x:forEach var="parentNode" select="$myXml/parent">
    <tags:my parentNode="${parentNode}"/>
</x:forEach>