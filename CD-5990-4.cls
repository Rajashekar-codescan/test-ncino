public with sharing class PermissionCheckController {

    public static List<List<Account>> getAccountsWithContacts(String searchTerm) {
                       if(Schema.sObjectType.Contact.isAccessible()){
                         list<list<Contact>>  contactSearchResult = [FIND :emailAddress in EMAIL FIELDS RETURNING
                                                                          Contact(Id,Name,AccountId,Account.Name,Email,OwnerId,Owner.Name,LastmodifiedDate
                                                                          where RecordTypeId in: contactRecordTypes)];
                            return contactSearchResult;
                       }
                       return null;
        }
}