<%@ page import="bank.User" %>

<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>

        <g:form action="save" >
            <fieldset>
                <legend>
                    <g:message code="default.create.label" args="[entityName]" />
                </legend>
                <tmpl:/tmpls/field bean="${userInstance}" field="username" messageCode="user.username.label">
                    <input name="username" type="text" class="xlarge" value="${userInstance?.username}" autofocus>
                </tmpl:/tmpls/field>
                <tmpl:/tmpls/field bean="${userInstance}" field="password" messageCode="user.password.label">
                    <input name="password" type="password" class="xlarge" value="${userInstance?.password}">
                </tmpl:/tmpls/field>
                <tmpl:/tmpls/field bean="${userInstance}" field="password" type="password" message="Password" />
            </fieldset>

            <fieldset>
                <div class="actions">
                    <button type="submit" class="btn primary">
                        <g:message code="default.button.create.label" />
                    </button>
                </div>
            </fieldset>
        </g:form>
    </body>
</html>
