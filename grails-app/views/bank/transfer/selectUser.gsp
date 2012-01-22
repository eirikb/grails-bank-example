<%@ page import="bank.User" %>
<html>
    <head>
        <meta name="layout" content="main" />
        <title>Bank</title>
    </head>
    <body>
        <g:form>
            <fieldset>
                <legend>
                    <g:message code="bank.transfer.label" />
                </legend>

                <tmpl:/tmpls/field bean="${account}" field="from" messageCode="account.from.label">
                    <span class="uneditable-input">${account?.name}</span>
                </tmpl:/tmpls/field>

                <tmpl:/tmpls/field bean="${account}" field="to" messageCode="user.to.label">
                    <g:select from="${users}" name="user" optionValue="username" optionKey="id" />
                </tmpl:/tmpls/field>
            </fieldset>

            <fieldset>
                <div class="actions">
                    <g:submitButton name="doSelectUser" class="btn primary" value="${message(code: 'bank.select.label')}" />
                </div>
            </fieldset>
        </g:form>
 	</body>
</html>
