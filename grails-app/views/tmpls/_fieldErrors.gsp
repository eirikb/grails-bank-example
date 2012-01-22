<g:hasErrors bean="${bean}" field="${field}">
    <g:eachError bean="${bean}" field="${field}">
        <span class="help-inline"><g:message error="${it}"/></span>
    </g:eachError>
</g:hasErrors>
