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
                    <g:sortableColumn property="id" title="${message(code: 'user.id.label', default: 'Id')}" />
                    <g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'Username')}" />
                    <g:sortableColumn property="accountExpired" title="${message(code: 'user.accountExpired.label', default: 'Account Expired')}" />
                    <g:sortableColumn property="accountLocked" title="${message(code: 'user.accountLocked.label', default: 'Account Locked')}" />
                    <g:sortableColumn property="enabled" title="${message(code: 'user.enabled.label', default: 'Enabled')}" />
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
