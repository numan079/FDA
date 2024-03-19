trigger createFile on Account (before insert) {
 // List to hold the accounts that need to be updated
    List<Account> acctsToUpdate = new List<Account>();
    
    // Loop through the inserted accounts
    for (Account acct : Trigger.new) {
        // Modify the custom field value as needed
        // For sample purpose, let's just set it to 'Sample Value'
        
        // Add the account to the list to be updated
        acctsToUpdate.add(acct);
    }
    
    // Update the accounts with the new custom field value
    update acctsToUpdate;
}