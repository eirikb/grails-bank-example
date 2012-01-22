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
                <div class="clearfix">
                    <label>
                        <g:message code="account.from.label" />
                    </label>
                    <div class="input">
                        <span class="uneditable-input">${account?.name}</span>
                    </div>
                </div>
                <div class="clearfix">
                    <label>
                        <g:message code="user.to.label" />
                    </label>
                    <div class="input">
                        <span class="uneditable-input">${user?.username}</span>
                    </div>
                </div>
                <div class="clearfix">
                    <label>
                        <g:message code="account.to.label" />
                    </label>
                    <div class="input">
                        <g:select from="${accounts}" name="account" optionValue="name" optionKey="id" />
                    </div>
                </div>
                <div class="clearfix">
                    <label>
                        <g:message code="transfer.amount.label" />
                    </label>
                    <div class="input">
                        <input type="number" name="amount">
                    </div>
                </div>
            </fieldset>

            <fieldset>
                <div class="actions">
                    <g:submitButton name="doSelectAccount" value="Send" />
                </div>
            </fieldset>
        </g:form>
    </body>
</html>
