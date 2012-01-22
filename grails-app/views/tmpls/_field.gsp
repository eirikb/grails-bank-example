<div class="clearfix ${hasErrors(bean: bean, field: field, 'error')}">
    <label for="${field}">
        <g:message code="${messageCode}" />
    </label>
    <div class="input">
        ${body()}
        <tmpl:/tmpls/fieldErrors bean="${bean}" field="${field}" />
    </div>
</div>
