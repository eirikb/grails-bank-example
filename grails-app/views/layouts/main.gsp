<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Bank" /></title>
        <link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.4.0/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="span12">
    		        <sec:ifLoggedIn>
  					    <g:link class="logout" controller="logout">Logout</g:link>
    		        </sec:ifLoggedIn>
                </div>
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
                    <tmpl:/templates/menu />
                </div>
                <div class="span10">
                    <g:layoutBody />
                </div>
            </div>
	    </div>
    </body>
</html>
