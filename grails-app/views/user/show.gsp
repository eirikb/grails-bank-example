<%@ page import="bank.User" %>

<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
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
                    <td><g:message code="user.id.label" default="Id" /></td>
                    <td>${fieldValue(bean: userInstance, field: "id")}</td>
                </tr>
                <tr>
                    <td><g:message code="user.username.label" default="Username" /></td>
                    <td>${fieldValue(bean: userInstance, field: "username")}</td>
                </tr>
                <tr>
                    <td><g:message code="user.accountExpired.label" default="Useraccount Expired" /></td>
                    <td>${fieldValue(bean: userInstance, field: "accountExpired")}</td>
                </tr>
                <tr>
                    <td><g:message code="user.accountLocked.label" default="Useraccount Locked" /></td>
                    <td>${fieldValue(bean: userInstance, field: "accountLocked")}</td>
                </tr>
                <tr>
                    <td><g:message code="user.enabled.label" default="Enabled" /></td>
                    <td>${fieldValue(bean: userInstance, field: "enabled")}</td>
                </tr>
                <tr>
                    <td><g:message code="user.passwordExpired.label" default="Password Expired" /></td>
                    <td>${fieldValue(bean: userInstance, field: "passwordExpired")}</td>
                </tr>
                <tr>
                    <td><g:message code="user.accounts.label" default="Accounts" /></td>
                    <td>
                        <ul>
                            <g:each in="${userInstance.accounts}" var="a">
                                <li><g:link controller="account" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
                            </g:each>
                        </ul>
                    </td>
                </tr>
            </tbody>
        </table>

        <g:form action="save" >
            <g:hiddenField name="id" value="${userInstance?.id}" />
            <fieldset>
                <div class="actions">
                    <g:link action="edit" id="${userInstance?.id}" class="btn primary">
                        <g:message code="default.button.edit.label" default="Edit" />
                    </g:link>
                    <g:submitButton name="delete" class="btn danger" value="${message(code: 'default.button.delete.label', default: 'Delete')}" />
                </div>
            </fieldset>
        </g:form>
    </body>
</html>
