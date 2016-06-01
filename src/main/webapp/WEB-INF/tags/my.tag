<%@ taglib uri="http://java.sun.com/jsp/jstl/xml"  prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import var="testXml2" url="/test2.xml"/>
<x:parse var="myXml2" xml="${testXml2}"/>

<x:forEach var="parentNode2" select="$myXml2/parentInTag">
    <x:out select="$parentNode2/childInTag"/>
    <br/>
    <x:out select="childInTag"/>
    <br/>
    <x:out select="@someAttr"/>
</x:forEach>