export default [
    {
        "title": "Home",
        "fileName": "index.html",
        "text": "Home Project Home Use the apexdox.homePagePath  setting to point to an HTML file that contains details about your project. The body of the HTML will show up here instead of this default!"
    },
    {
        "title": "HashStringAction",
        "fileName": "HashStringAction.html",
        "text": "HashStringAction @ Author: Scott Jacobson @ Create Time: 2024-04-05 13:44:39 @ Description: Custom Flow action that can hash any string value. Signature public class HashStringAction HashStringAction Methods hash(inputs) newHashStringActionException(message) hash(inputs) Signature @InvocableMethod(label='Hash String' description='Custom action to hash any string value') public static List<String> hash(List<HashStringAction.inputData> inputs) newHashStringActionException(message) Signature public static HashStringActionException newHashStringActionException(String message) HashStringAction.HashStringActionException Signature public class HashStringActionException extends Exception HashStringAction.InputData Signature public class InputData HashStringAction.InputData Properties Name Signature Annotations algorithms private List<String> algorithms hashType public String hashType source public string source @AuraEnabled @InvocableVariable(label='Source Value' description='Data to be secured' required=true) HashStringAction.InputData Constructors inputData() inputData(s) inputData(s, h) inputData() Signature public inputData() inputData(s) Signature public inputData(String s) inputData(s, h) Signature public inputData(String s, String h)"
    },
    {
        "title": "HashStringActionTest",
        "fileName": "HashStringActionTest.html",
        "text": "HashStringActionTest This class contains unit tests for validating the behavior of Apex classes and triggers. Unit tests are class methods that verify whether a particular piece of code is working properly. Unit test methods take no arguments, commit no data to the database, and are flagged with the testMethod keyword in the method definition. All test methods in an org are executed whenever Apex code is deployed to a production org to confirm correctness, ensure code coverage, and prevent regressions. All Apex classes are required to have at least 75% code coverage in order to be deployed to a production org. In addition, all triggers must have some code coverage. The @isTest class annotation indicates this class only contains test methods. Classes defined with the @isTest annotation do not count against the org size limit for all Apex scripts. See the Apex Language Reference for more information about Testing and Code Coverage. Signature @isTest private class HashStringActionTest HashStringActionTest Methods testHashMethod() testInputDataDefaultHashType() testInputDataInvalidHashType() testHashMethod() Signature @isTest static void testHashMethod() testInputDataDefaultHashType() Signature @isTest static void testInputDataDefaultHashType() testInputDataInvalidHashType() Signature @isTest static void testInputDataInvalidHashType()"
    }
];
