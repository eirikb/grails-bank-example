<%@ page import="bank.Account" %>

<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>

        <g:form action="save" >
            <fieldset>
                <legend>
                    <g:message code="default.create.label" args="[entityName]" />
                </legend>
                <div class="clearfix ${hasErrors(bean: accountInstance, field: 'name', 'error')}">
                    <label for="name">
                        <g:message code="account.name.label" default="name" />
                    </label>
                    <div class="input">
                        <g:textField class="xlarge" name="name" value="${accountInstance?.name}" />
                        <g:hasErrors bean="${accountInstance}" field="name">
                            <g:eachError bean="${accountInstance}" field="name">
                                <span class="help-inline"><g:message error="${it}"/></span>
                            </g:eachError>
                        </g:hasErrors>
                    </div>
                </div>
                <div class="clearfix ${hasErrors(bean: accountInstance, field: 'balance', 'error')}">
                    <label for="balance">
                        <g:message code="account.balance.label" default="balance" />
                    </label>
                    <div class="input">
                        <input type="number" class="xlarge" name="balance" value="${accountInstance?.balance}">
                        <g:hasErrors bean="${accountInstance}" field="balance">
                            <g:eachError bean="${accountInstance}" field="balance">
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
