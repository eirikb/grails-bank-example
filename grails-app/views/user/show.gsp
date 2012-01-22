<%@ page import="bank.User" %>

<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>

        <table class="zebraStripes">
            <thead>
                <tr>
                    <th>Property</th>
                    <th>Value</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><g:message code="user.id.label" /></td>
                    <td>${fieldValue(bean: userInstance, field: "id")}</td>
                </tr>
                <tr>
                    <td><g:message code="user.username.label" /></td>
                    <td>${fieldValue(bean: userInstance, field: "username")}</td>
                </tr>
                <tr>
                    <td><g:message code="user.accountExpired.label" /></td>
                    <td>${fieldValue(bean: userInstance, field: "accountExpired")}</td>
                </tr>
                <tr>
                    <td><g:message code="user.accountLocked.label" /></td>
                    <td>${fieldValue(bean: userInstance, field: "accountLocked")}</td>
                </tr>
                <tr>
                    <td><g:message code="user.enabled.label" /></td>
                    <td>${fieldValue(bean: userInstance, field: "enabled")}</td>
                </tr>
                <tr>
                    <td><g:message code="user.passwordExpired.label" /></td>
                    <td>${fieldValue(bean: userInstance, field: "passwordExpired")}</td>
                </tr>
            </tbody>
        </table>

        <g:form action="save" >
            <g:hiddenField name="id" value="${userInstance?.id}" />
            <fieldset>
                <div class="actions">
                    <g:link action="edit" id="${userInstance?.id}" class="btn primary">
                        <g:message code="default.button.edit.label" />
                    </g:link>
                    <button class="btn danger" type="submit">
                        <g:message code="default.button.delete.label" />
                    </button>
                </div>
            </fieldset>
        </g:form>
    </body>
</html>
