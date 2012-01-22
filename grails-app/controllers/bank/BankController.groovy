package bank

import bank.User;

class BankController {
    
    def springSecurityService
    def bankService

    def getUser() {
        def id = springSecurityService.principal?.id?.toInteger()
        def user = User.get(id)
    }
    
    def index = {
        [user: getUser()]
    }
    
    def transferFlow = {
        
        start {
            action {
                def account = Account.get(params.id)
                [account: account, users: User.list()]
            }
            on("success").to("selectUser")
        }
        
        selectUser {
            on("doSelectUser").to("doSelectUser")
        }
        
        selectAccount {
            on("doSelectAccount").to("doSelectAccount")
        }
        
        doSelectUser {
            action {
                def user = User.get(params.user)
                if (user) {
                    flow.user = user
                    flow.accounts = user.accounts
                    flow.accounts.remove(flow.account)
                    return success()
                } else {
                    return error()
                }
            }
            on("success").to("selectAccount")
            on("error").to("selectUser")
        }
        
        done()
        
        fail()
        
        doSelectAccount {
            action {
                def account = flow.account
                def account2 = Account.get(params.account)
                try {
                    def amount = params.amount.toInteger()
                    if (account && account2 && amount) {
                        bankService.transferMoney(account, account2, amount)
                        flow.amount = amount
                        flow.account2 = account2
                        return success()
                    } else{
                        return error()
                    }
                } catch (NumberFormatException e) {
                    flash.message = "Amount must be a number"
                    return selectAccount() 
                }
            }
            on("selectAccount").to("selectAccount")
            on("success").to("done")
            on("error").to("fail")
        }
    }
}
