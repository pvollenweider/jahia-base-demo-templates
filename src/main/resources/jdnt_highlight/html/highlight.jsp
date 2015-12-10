<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="functions" uri="http://www.jahia.org/tags/functions" %>
<%@ taglib prefix="ui" uri="http://www.jahia.org/tags/uiComponentsLib" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="propertyDefinition" type="org.jahia.services.content.nodetypes.ExtendedPropertyDefinition"--%>
<%--@elvariable id="type" type="org.jahia.services.content.nodetypes.ExtendedNodeType"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>

<c:set var="title" value="${currentNode.properties['jcr:title'].string}"/>
<c:set var="description" value="${currentNode.properties['description'].string}"/>
<c:set var="icon" value="${currentNode.properties['faIcon'].string}"/>
<c:if test="${jcr:isNodeType(currentNode, 'jdmix:hasLink')}">
    <c:set var="linkUrl" value="${currentNode.properties['internalLink'].node.url}"/>
</c:if>

<%-- removed to allow user to change view on the layout tab in edit mode
<c:choose>
<c:when test="${jcr:isNodeType(currentNode, 'jdmix:imgView')}">
    <template:include view="imgView" />
</c:when>
    <c:otherwise> --%>
        <div class="service">
            <c:choose><c:when test="${jcr:isNodeType(currentNode, 'jdmix:hasLink')}">
            <a href="${linkUrl}"><i class="fa ${icon} service-icon"></i></a></c:when>
                <c:otherwise><i class="fa ${icon} service-icon"></i></c:otherwise>
            </c:choose>
                <div class="desc">
                    <c:choose>
                    <c:when test="${jcr:isNodeType(currentNode, 'jdmix:hasLink')}">
                    <h4><a href="${linkUrl}">${title}</a></h4>
                    </c:when>
                        <c:otherwise>
                    <h4>${title}</h4>
                        </c:otherwise>
                    </c:choose>
                    <p>${description}</p>
                </div>
            </div>
<%-- removed to allow user to change view on the layout tab in edit mode
    </c:otherwise>
</c:choose>--%>