<div class="clearfix ${hasErrors(bean: bean, field: field, 'error')}">
    <label for="${field}">
        <g:message code="user.${field}.label" />
    </label>
    <div class="input">
        <input type="${type}" class="xlarge" name="${field}" value="${bean[field]}" />
        <tmpl:/templates/fieldErrors bean="${bean}" field="${field}" />
    </div>
</div>
