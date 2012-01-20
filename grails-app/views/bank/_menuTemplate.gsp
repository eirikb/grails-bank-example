<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />

<sec:ifLoggedIn>
    <ul class="unstyled">
        <li>
            <a class="home" href="${createLink(uri: '/')}">
                <g:message code="default.home.label"/>
            </a>
        </li>
        <sec:ifAllGranted roles="ROLE_ADMIN">
            <li>
                <g:link class="list" controller="user" action="list">
                    <g:message code="default.list.label" args="[entityName]" />
                </g:link>
            </li>
            <li>
                <g:link class="create" controller="user" action="create">
                    <g:message code="default.new.label" args="[entityName]" />
                </g:link>
            </li>
        </sec:ifAllGranted>
    </ul>
</sec:ifLoggedIn>
