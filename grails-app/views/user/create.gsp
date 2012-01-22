<%@ page import="bank.User" %>

<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>

        <g:form action="save" >
            <fieldset>
                <legend>
                    <g:message code="default.create.label" args="[entityName]" />
                </legend>
                <tmpl:/templates/field bean="${userInstance}" field="username" type="input" message="Username" />
                <tmpl:/templates/field bean="${userInstance}" field="password" type="password" message="Password" />
            </fieldset>

            <fieldset>
                <div class="actions">
                    <g:submitButton name="create" class="btn primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </div>
            </fieldset>
        </g:form>
    </body>
</html>
