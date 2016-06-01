<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml"  prefix="x" %>
<%@ taglib tagdir="/WEB-INF/tags"			       prefix="tags"%>

<c:import var="testXml" url="test.xml"/>
<x:parse var="myXml" xml="${testXml}"/>

<x:forEach var="parentNode" select="$myXml/parent">
    <%-- Test of accessing the forEach var name --%>
    <x:out select="$parentNode/child"/>
    <br/>
    <%-- Test of accessing impied context attribute --%>
    <x:out select="@someAttr"/>
    <br/>
    <%-- Test of accessing impied context content --%>
    <x:out select="child"/>
    <br/>
    <%-- Test of nested tag --%>
    <tags:my/>
</x:forEach>