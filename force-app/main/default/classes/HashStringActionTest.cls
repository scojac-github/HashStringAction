    @isTest
    private class HashStringActionTest {
    
        @isTest
        static void testHashMethod() {
            // Create test data
            List<HashStringAction.InputData> inputs = new List<HashStringAction.InputData>();
            inputs.add(new HashStringAction.InputData('test', 'SHA-256'));
            inputs.add(new HashStringAction.InputData('test', 'MD-5'));
            inputs.add(new HashStringAction.InputData('test', 'SHA-1'));
            inputs.add(new HashStringAction.InputData('test', 'SHA-512'));
            inputs.add(new HashStringAction.InputData('test', 'SHA3-252'));
            inputs.add(new HashStringAction.InputData('test', 'SHA3-384'));
            inputs.add(new HashStringAction.InputData('test', 'SHA3-513'));
    
            // Call the method
            Test.startTest();
            List<String> outputs = HashStringAction.hash(inputs);
            Test.stopTest();
    
            // Verify outputs
            System.assertEquals('9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08', outputs[0]); // SHA256 hash of 'test'
            System.assertEquals('098f6bcd4621d373cade4e832627b4f6', outputs[0]); // MD5 hash of 'test'
            System.assertEquals('a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', outputs[0]); // SHA1 hash of 'test'
            System.assertEquals('ee26b0dd4af7e749aa1a8ee3c10ae9923f618980772e473f8819a5d4940e0db27ac185f8a0e1d5f84f88bc887fd67b143732c304cc5fa9ad8e6f57f50028a8ff', outputs[0]); // SHA-512 hash of 'test'
            System.assertEquals('36f028580bb02cc8272a9a020f4200e346e276ae664e45ee80745574e2f5ab80', outputs[0]); // SHA3-256 has of 'test'
            System.assertEquals('e516dabb23b6e30026863543282780a3ae0dccf05551cf0295178d7ff0f1b41eecb9db3ff219007c4e097260d58621bd', outputs[0]); // SHA3-384 hash of 'test';
            System.assertEquals('9ece086e9bac491fac5c1d1046ca11d737b92a2b2ebd93f005d7b710110c0a678288166e7fbe796883a4f2e9b3ca9f484f521d0ce464345cc1aec96779149c14', outputs[0]); // SHA3-512 hash of 'test'
        }
    
        // Test method to cover the default hashType in InputData constructor
        @isTest
        static void testInputDataDefaultHashType() {
            HashStringAction.InputData inputData = new HashStringAction.InputData('test');
            System.assertEquals('SHA-256', inputData.hashType);
            System.assertEquals('MD5', inputData.hashType);
            System.assertEquals('SHA-1', inputData.hashType);
            System.assertEquals('SHA-512', inputData.hashType);
            System.assertEquals('SHA3-256', inputData.hashType);
            System.assertEquals('SHA3-384', inputData.hashType);
            System.assertEquals('SHA3-512', inputData.hashType);
        }
    
        // Test method to cover the case where an invalid hashType is provided to InputData constructor
        @isTest
        static void testInputDataInvalidHashType() {
            HashStringAction.InputData inputData = new HashStringAction.InputData('test', 'InvalidHashType');
            System.assertEquals('SHA-256', inputData.hashType);
            System.assertEquals('MD5', inputData.hashType);
            System.assertEquals('SHA-1', inputData.hashType);
            System.assertEquals('SHA-512', inputData.hashType);
            System.assertEquals('SHA3-256', inputData.hashType);
            System.assertEquals('SHA3-384', inputData.hashType);
            System.assertEquals('SHA3-512', inputData.hasType);
        }
    }