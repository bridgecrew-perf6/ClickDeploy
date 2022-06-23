public with sharing class HelloWorld {
    public static void createAccounts() {

        //Empty List of Accounts
        List<Account> accounts = new List<Account>();

        //Create 100 Sample Accounts & Add to Collection
        for(Integer i=1; i<=100; i++){
            Account acc = new Account();
            acc.Name = 'Account #' + i;
            if (i <= 33) {
                acc.Rating = 'Cold';
                acc.Active__c = 'No';
            }else if (i > 33 &&	i <=66) {
                acc.Rating = 'Warm';
                acc.Active__c = 'Yes';
                acc.CustomerPriority__c = 'Medium';
            } else {
                acc.Rating = 'Hot';
                acc.Active__c = 'Yes';
                acc.CustomerPriority__c = 'High';
            }
            accounts.add(acc);
        }
        try {
            //Insert Accounts
            Database.insert(accounts,false);
        } catch (Exception e) {
            //Handle Exceptions
            System.System.debug(e.getMessage());
        }

    }
}