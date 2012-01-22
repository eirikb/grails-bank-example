<html>
    <head>
        <meta name='layout' content='main' />
        <title>
            <g:message code="security.login.label" />
        </title>
    </head>
    <body>
        <form action="${postUrl}" method="POST">
            <fieldset>
                <legend>
                    <g:message code="springSecurity.pleaselogin.label" />
                </legend>
                <div class="clearfix">
                    <label for="username">
                        <g:message code="user.username.label" />
                    </label>
                    <div class="input">
                        <input type="text" class="xlarge" name="j_username" autofocus>
                    </div>
                </div>
                <div class="clearfix">
                    <label for="password">
                        <g:message code="user.password.label" />
                    </label>
                    <div class="input">
                        <input type="password" class="xlarge" name="j_password">
                    </div>
                </div>
                <div class="clearfix">
                    <div class="input">
                        <input type="checkbox" name="${rememberMeParameter}"
                            <g:if test="${hasCookie}">checked="checked"</g:if>>
                        <span><g:message code="springSecurity.rememberme.label" /></span>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <div class="actions">
                    <button class="btn primary" type="submit">
                        <g:message code="springSecurity.login.label" />
                    </button>
                </div>
            </fieldset>
        </form>
    </body>
</html>
