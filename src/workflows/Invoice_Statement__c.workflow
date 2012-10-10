<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Set_Final_Approval_Status</fullName>
        <field>Status__c</field>
        <literalValue>Closed</literalValue>
        <name>Set Final Approval Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Final_Rejection_Status</fullName>
        <field>Status__c</field>
        <literalValue>Open</literalValue>
        <name>Set Final Rejection Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Initial_Approval_Status</fullName>
        <field>Status__c</field>
        <literalValue>Pending</literalValue>
        <name>Set Initial Approval Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>closeStatus</fullName>
        <field>Status__c</field>
        <literalValue>Invoice Sent</literalValue>
        <name>closeStatus</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>closeInvoice</fullName>
        <actions>
            <name>closeStatus</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Invoice_Statement__c.InvoiceDate__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Closes a statement once an invoice has been sent.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
