public with sharing class PermissionCheckController {

    public static List<List<Account>> getAccountsWithContacts(String searchTerm) {
              list<list<Contact>>  contactSearchResult;
                       if(Schema.sObjectType.Contact.isAccessible() && Schema.sObjectType.Apple.fields.Name.isAccessible() ){
                         contactSearchResult = [FIND :emailAddress in EMAIL FIELDS RETURNING
                                                 Contact(Id,Name,AccountId,Account.Name,Email,OwnerId,Owner.Name,LastmodifiedDate
                                                 where RecordTypeId in: contactRecordTypes), Apple( Id, Name)];
                             return contactSearchResult;
                       }
                       return contactSearchResult;
        }
}