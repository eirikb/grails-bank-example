<html>
    <head>
        <meta name='layout' content='main' />
        <title>
            <g:message code="security.login.label" default="Login" />
        </title>
    </head>
    <body>
        <form action="${postUrl}" method="POST">
            <fieldset>
                <legend>
                    <g:message code="security.pleaselogin.label" default="Please login" />
                </legend>
                <div class="clearfix">
                    <label for="username">
                        <g:message code="user.username.label" default="Username" />
                    </label>
                    <div class="input">
                        <input type="text" class="xlarge" name="j_username" autofocus>
                    </div>
                </div>
                <div class="clearfix">
                    <label for="password">
                        <g:message code="user.password.label" default="Password" />
                    </label>
                    <div class="input">
                        <input type="password" class="xlarge" name="j_password">
                    </div>
                </div>
                <div class="clearfix">
                    <div class="input">
                        <input type="checkbox" name="${rememberMeParameter}"
                            <g:if test="${hasCookie}">checked="checked"</g:if>>
                        <span><g:message code="security.rememberme.label" default="Remember me" /></span>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <div class="actions">
                    <input class="btn primary" type="submit" value="Login">
                </div>
            </fieldset>
        </form>
    </body>
</html>
