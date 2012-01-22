<%@ page import="bank.User" %>

    <head>
        <meta name="layout" content="main" />
        <title>Bank</title>
    </head>
    <body>
        <h3>Accounts</h3>
        <g:if test="${user.accounts}">
            <table class="zebra-striped">
                <thead>
                    <tr>
                        <g:sortableColumn property="name" title="Name" />
                        <g:sortableColumn property="balance" title="Balance" />
                        <th>Transfer</th>
                    </tr>
                </thead>
                <tbody>
                    <g:each in="${user.accounts}" var="account">
                        <tr>
                            <td>${fieldValue(bean: account, field: "name")}</td>
                            <td>${fieldValue(bean: account, field: "balance")}</td>
                            <td>
                                <g:link controller="bank" action="transfer" event="start" id="${account.id }">Transfer</g:link>
                            </td>
                        </tr>
                    </g:each>
                </tbody>
            </table>
        </g:if>
        <g:else>
            <p>You have no accounts registered, please <g:link controller="account" action="create">create one</g:link>.</p>
        </g:else>
    </body>
</html>
