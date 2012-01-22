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
                    <g:message code="account.transfer.label" />
                </legend>

                <tmpl:/tmpls/field bean="${account}" field="from" messageCode="account.from.label">
                    <span class="uneditable-input">${account?.name}</span>
                </tmpl:/tmpls/field>

                <tmpl:/tmpls/field bean="${user}" field="username" messageCode="user.to.label">
                    <span class="uneditable-input">${user?.username}</span>
                </tmpl:/tmpls/field>

                <tmpl:/tmpls/field messageCode="account.to.label">
                    <g:select from="${accounts}" name="account" optionValue="name" optionKey="id" />
                </tmpl:/tmpls/field>

                <tmpl:/tmpls/field messageCode="bank.amount.label">
                    <input type="number" name="amount">
                </tmpl:/tmpls/field>
            </fieldset>

            <fieldset>
                <div class="actions">
                    <g:submitButton name="doSelectAccount" class="btn primary" value="${message(code: 'bank.send.label')}" />
                </div>
            </fieldset>
        </g:form>
    </body>
</html>
