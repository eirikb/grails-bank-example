<%@ page import="bank.User" %>
<html>
    <head>
        <meta name="layout" content="main" />
    </head>
    <body>
        <p>
            <g:message code="bank.success.text" args="[amount, account?.name, account2?.name]" />
        </p>
        <g:link controller="bank">
            <g:message code="bank.back.label" />
        </g:link>
    </body>
</html>
