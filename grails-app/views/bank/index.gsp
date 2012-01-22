<%@ page import="bank.User" %>

    <head>
        <meta name="layout" content="main" />
    </head>
    <body>
        <h2>
            <g:message code="account.accounts.label" />
        </h2>
        <g:if test="${user.accounts}">
            <table class="zebra-striped">
                <thead>
                    <tr>
                        <g:sortableColumn property="name" titleKey="account.name.label" />
                        <g:sortableColumn property="balance" titleKey="account.balance.label" />
                        <th>
                            <g:message code="bank.transfer.label" />
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <g:each in="${user.accounts}" var="account">
                        <tr>
                            <td>${fieldValue(bean: account, field: "name")}</td>
                            <td>${fieldValue(bean: account, field: "balance")}</td>
                            <td>
                                <g:link controller="bank" action="transfer" event="start" id="${account.id }">
                                    <g:message code="bank.transfer.label" />
                                </g:link>
                            </td>
                        </tr>
                    </g:each>
                </tbody>
            </table>
        </g:if>
        <g:else>
            <p>
                <g:message code="account.noaccounts.label" /> 
                <g:link controller="account" action="create">
                    <g:message code="account.createone.label" /> 
                </g:link>.
            </p>
        </g:else>
    </body>
</html>
