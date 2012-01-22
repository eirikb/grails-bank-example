<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Bank" /></title>
        <link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.4.0/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
           <div class="page-header">
                <h1>Grails Bank example</h1>
                <img src="http://upload.wikimedia.org/wikipedia/commons/d/db/Crystal_Project_money.png" width="120" height="120" alt="">
                <br>
                <sec:ifLoggedIn>
                    <g:link class="logout" controller="logout">
                        <g:message code="springSecurity.logout.label" />
                    </g:link>
                </sec:ifLoggedIn>
            </div>
            <g:if test="${flash.message}">
                <div class="row">
                    <div class="span12">
            	        <div class="label success">${flash.message}</div>
                    </div>
                </div>
            </g:if>
            <div class="row">
                <div class="span2">
                    <tmpl:/tmpls/menu />
                </div>
                <div class="span10">
                    <g:layoutBody />
                </div>
            </div>
	    </div>
    </body>
</html>
