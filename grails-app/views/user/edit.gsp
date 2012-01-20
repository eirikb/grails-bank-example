<%@ page import="bank.User" %>

<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>

        <g:form>
            <g:hiddenField name="id" value="${userInstance?.id}" />
            <g:hiddenField name="version" value="${userInstance?.version}" />
            <fieldset>
                <legend>
                    <g:message code="default.edit.label" args="[entityName]" />
                </legend>
            </fieldset>
            <fieldset>
                <div class="actions">
                    <g:submitButton name="update" class="btn primary" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </div>
            </fieldset>
        </g:form>
    </body>
</html>
