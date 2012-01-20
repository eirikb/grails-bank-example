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
                <div class="clearfix ${hasErrors(bean: userInstance, field: 'username', 'error')}">
                    <label for="username">
                        <g:message code="user.username.label" default="Username" />
                    </label>
                    <div class="input">
                        <g:textField class="xlarge" name="username" value="${userInstance?.username}" />
                        <g:hasErrors bean="${userInstance}" field="username">
                            <g:eachError bean="${userInstance}" field="username">
                                <span class="help-inline"><g:message error="${it}"/></span>
                            </g:eachError>
                        </g:hasErrors>
                    </div>
                </div>
                <div class="clearfix ${hasErrors(bean: userInstance, field: 'password', 'error')}">
                    <label for="password">
                        <g:message code="user.password.label" default="Password" />
                    </label>
                    <div class="input">
                        <g:passwordField class="xlarge" name="password" value="${userInstance?.password}" />
                        <g:hasErrors bean="${userInstance}" field="password">
                            <g:eachError bean="${userInstance}" field="password">
                                <span class="help-inline"><g:message error="${it}"/></span>
                            </g:eachError>
                        </g:hasErrors>
                    </div>
                </div>
            </fieldset>

            <fieldset>
                <div class="actions">
                    <g:submitButton name="create" class="btn primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </div>
            </fieldset>
        </g:form>
    </body>
</html>
