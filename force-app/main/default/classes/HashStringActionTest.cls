/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an org are executed whenever Apex code is deployed
 * to a production org to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production org. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the org size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
    @isTest
    private class HashStringActionTest {
    
        @isTest
        static void testHashMethod() {
            // Create test data
            List<HashStringAction.InputData> inputs = new List<HashStringAction.InputData>();
            inputs.add(new HashStringAction.InputData('test', 'SHA-256'));
            /* TO DO: Add additional inputs
            * MD5
            * SHA1
            * SHA-512
            * SHA3-252
            * SHA3-384
            * SHA3-513
            */
    
            // Call the method
            Test.startTest();
            List<String> outputs = HashStringAction.hash(inputs);
            Test.stopTest();
    
            // Verify outputs
            // Generate a key at tools.keycdn.com
            System.assertEquals('9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08', outputs[0]); // SHA256 hash of 'test'
        }
    
        // Test method to cover the default hashType in InputData constructor
        @isTest
        static void testInputDataDefaultHashType() {
            HashStringAction.InputData inputData = new HashStringAction.InputData('test');
            System.assertEquals('SHA-256', inputData.hashType);
        }
    
        // Test method to cover the case where an invalid hashType is provided to InputData constructor
        @isTest
        static void testInputDataInvalidHashType() {
            HashStringAction.InputData inputData = new HashStringAction.InputData('test', 'InvalidHashType');
            System.assertEquals('SHA-256', inputData.hashType);
        }
    }