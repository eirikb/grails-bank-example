<g:set var="user" value="${message(code: 'user.label')}" />
<g:set var="account" value="${message(code: 'account.label')}" />

<sec:ifLoggedIn>
    <ul class="unstyled">
        <li>
            <a class="home" href="${createLink(uri: '/')}">
                <g:message code="default.home.label"/>
            </a>
        </li>
        <li>
            <g:link class="create" controller="account" action="create">
                <g:message code="default.new.label" args="[account]" />
            </g:link>
        </li>
        <sec:ifAllGranted roles="ROLE_ADMIN">
            <li>
                <g:link class="list" controller="user" action="list">
                    <g:message code="default.list.label" args="[user]" />
                </g:link>
            </li>
            <li>
                <g:link class="create" controller="user" action="create">
                    <g:message code="default.new.label" args="[user]" />
                </g:link>
            </li>
        </sec:ifAllGranted>
    </ul>
</sec:ifLoggedIn>
