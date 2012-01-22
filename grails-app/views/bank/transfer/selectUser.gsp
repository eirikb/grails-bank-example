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
                    <g:message code="account.transfer.label" default="Transfer money" />
                </legend>
                <div class="clearfix">
                    <label>
                        <g:message code="account.from.label" default="From account" />
                    </label>
                    <div class="input">
                        <span class="uneditable-input">${account?.name}</span>
                    </div>
                </div>
                <div class="clearfix">
                    <label>
                        <g:message code="user.to.label" default="To user" />
                    </label>
                    <div class="input">
                        <g:select from="${users}" name="user" optionValue="username" optionKey="id" />
                    </div>
                </div>
            </fieldset>

            <fieldset>
                <div class="actions">
                    <g:submitButton name="doSelectUser" class="btn primary" value="Select" />
                </div>
            </fieldset>
        </g:form>
 	</body>
</html>
