public class lineitem
{
 private ApexPages.StandardController stdCtrl {get; set;}

 public List<Line_item__c> lineitem {get; set;}

 public lineitem(ApexPages.StandardController std)
{
  stdCtrl=std;
  setupItems();
 }
  
 private void setupItems()
 {
  lineitem=[select Date__c, Description__c, Hours__c, Cost__c
  from Line_item__c where Invoice_statement__r.id=:stdCtrl.getId()
  ORDER BY Date__c ASC NULLS LAST];
 }

}