public class ownerInfo
{
 private ApexPages.StandardController stdCtrl {get; set;}

 public User ownerInfo {get; set;}
 
 Invoice_statement__c i = [SELECT ID, OwnerID FROM Invoice_statement__c WHERE id=:ApexPages.currentPage().getParameters().get('id')];
 
 public ownerInfo(ApexPages.StandardController std)
{
  stdCtrl=std;
  setupOwner(i);
 }

 private void setupOwner(Invoice_statement__c o)
 {
    ownerInfo=[SELECT Street, City, State, PostalCode, Phone
    FROM User WHERE Id=:o.OwnerID];
 }
}