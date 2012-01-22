package bank

import org.springframework.dao.DataIntegrityViolationException

class AccountController {

    def springSecurityService

    static allowedMethods = [save: 'POST']

    def create() {
        [accountInstance: new Account(params)]
    }

    def save() {
        def accountInstance = new Account(params)
        def id = springSecurityService.principal?.id?.toInteger()
        def user = User.get(id)
        accountInstance.user = user
        if (!accountInstance.save(flush: true)) {
            render(view: 'create', model: [accountInstance: accountInstance])
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'account.label', default: 'Account'), accountInstance.id])
        redirect(controller: 'bank')
    }

    def show() {
        def accountInstance = Account.get(params.id)
        if (!accountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'account.label', default: 'Account'), params.id])
            redirect(action: 'list')
            return
        }

        [accountInstance: accountInstance]
    }
}
