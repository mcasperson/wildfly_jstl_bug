<%@ taglib uri="http://java.sun.com/jsp/jstl/xml"  prefix="x" %>

<%@ attribute name="parentNode" required="true" description="An xml element that holds a child" %>

<%--
    This x:forEach will correctly add the grandChild attribute in the local page context.
    But the nested x:out will not be able to read it.
--%>
<x:forEach var="childNode" select="$parentNode/child">
    <%--
        What we see with org.jboss.spec.javax.servlet.jstl 1.1.2.Final is that this x:out
        can't find the attribute grandChild, despite it obvbiously being set above.

        This is because the pageContext of the x:out element is set to the context of its
        parent x:forEach by calling XalanUtil.getContext(). The parent x:forEach in turn
        obtained its parent context from its parent x:forEach from index.jsp (again because
        of the call to XalanUtil.getContext()). x:out is therefor looking for variables in
        the pageContext of index.jsp, which will not contain the attribute grandChild.
    --%>
    <x:out select="$childNode/@someAttr"/>
</x:forEach>