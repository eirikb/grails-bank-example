<%@ page import="bank.User" %>
<html>
    <head>
        <meta name="layout" content="main" />
        <title>Bank</title>
    </head>
    <body>
        <p>${amount} have been successfully transfered from ${account?.name} to ${account2?.name}</p>
        <g:link controller="bank">Go back</g:link>
    </body>
</html>
