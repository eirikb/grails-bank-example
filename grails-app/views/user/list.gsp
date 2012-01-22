<%@ page import="bank.User" %>

<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

        <h1><g:message code="default.list.label" args="[entityName]" /></h1>

        <table class="zebraStripes">
            <thead>
                <tr>
                    <g:sortableColumn property="id" titleKey="user.id.label" />
                    <g:sortableColumn property="username" titleKey="user.username.label" />
                    <g:sortableColumn property="accountExpired" titleKey="user.accountExpired.label" />
                    <g:sortableColumn property="accountLocked" titleKey="user.accountLocked.label" />
                    <g:sortableColumn property="enabled" titleKey="user.enabled.label" />
                </tr>
            </thead>
            <tbody>
                <g:each in="${userInstanceList}" var="userInstance">
                    <tr>
                        <td>
                            <g:link action="show" id="${userInstance.id}">
                                ${fieldValue(bean: userInstance, field: "id")}
                            </g:link>
                        </td>
                        <td>${fieldValue(bean: userInstance, field: "username")}</td>
                        <td><g:formatBoolean boolean="${userInstance.accountExpired}" /></td>
                        <td><g:formatBoolean boolean="${userInstance.accountLocked}" /></td>
                        <td><g:formatBoolean boolean="${userInstance.enabled}" /></td>
                    </tr>
                </g:each>
            </tbody>
        </table>
        <div class="pagination">
            <g:paginate total="${userInstanceTotal}" />
        </div>
    </body>
</html>
