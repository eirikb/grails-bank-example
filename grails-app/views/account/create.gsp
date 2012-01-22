<%@ page import="bank.Account" %>

<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>

        <g:form action="save" >
            <fieldset>
                <legend>
                    <g:message code="default.create.label" args="[entityName]" />
                </legend>
                <tmpl:/templates/field bean="${accountInstance}" field="name" type="text" message="Name" />
                <tmpl:/templates/field bean="${accountInstance}" field="balance" type="number" message="Balance" />
            </fieldset>

            <fieldset>
                <div class="actions">
                    <g:submitButton name="create" class="btn primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </div>
            </fieldset>
        </g:form>
    </body>
</html>
