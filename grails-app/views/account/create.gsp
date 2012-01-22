<%@ page import="bank.Account" %>

<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'account.label')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>

        <g:form action="save" >
            <fieldset>
                <legend>
                    <g:message code="default.create.label" args="[entityName]" />
                </legend>
                <tmpl:/tmpls/field bean="${accountInstance}" field="name" messageCode="account.name.label">
                    <input name="name" type="text" class="xlarge" value="${accountInstance?.name}">
                </tmpl:/tmpls/field>

                <tmpl:/tmpls/field bean="${accountInstance}" field="name" messageCode="account.balance.label">
                    <input name="balance" type="number" class="xlarge" value="${accountInstance?.name}">
                </tmpl:/tmpls/field>
            </fieldset>

            <fieldset>
                <div class="actions">
                    <button type="submit" class="btn primary">
                        <g:message code="default.button.create.label" />
                    </button>
                </div>
            </fieldset>
        </g:form>
    </body>
</html>
