public with sharing class k {

String VAR1 = '';

    public static List<List<Account>> getAccountsWithContacts(String searchTerm) {
String GAR='s';
String ARR;
 list<list<Contact>>  CntactSearcsdxsxsdhResult2;
list<Contact>  contactSesassaarchResult;
                       if(Schema.sObjectType.Contact.isAccessible() && Schema.sObjectType.Apple.fields.Name.isAccessible() ){
                         contactSearchResult = [FIND :emailAddress in EMAIL FIELDS RETURNING
                                                 Contact(Id,Name,AccountId,Account.Name,Email,OwnerId,Owner.Name,LastmodifiedDate
                                                 where RecordTypeId in: contactRecordTypes), Apple( Id, Name)];
                             return contactSearchResult;
                       }
                       return contactSearchResult;
        }
