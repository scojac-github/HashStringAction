/**
 * @ Author: Scott Jacobson
 * @ Create Time: 2024-04-05 13:44:39
 * @ Description: Custom Flow action that can hash any string value. 
 */
public class HashStringAction {
	public class HashStringActionException extends Exception {}

	@InvocableMethod(label='Hash String' description='Custom action to hash any string value')
	public static List<String> hash(List<HashStringAction.inputData> inputs) {
		List<String> outputs = new List<String>();
		for(HashStringAction.inputData input : inputs) {
			try {
				Blob hashedValue = Crypto.generateDigest(input.hashType, Blob.valueOf(input.source));
				outputs.add(EncodingUtil.convertToHex(hashedValue));
			} catch(Exception e) {
				throw newHashStringActionException(e.getMessage());
			}
		}
		return outputs;
	}
	public class InputData {
		@AuraEnabled @InvocableVariable(label='Source Value' description='Data to be secured' required=true)
		public string source;
		@AuraEnabled @InvocableVariable(label='Hashing Algorithm' description='Select an algorithm supported by Salesforce (blank/default is SHA-256)')
		public String hashType;
		private List<String> algorithms = new List<String>{'MD5','SHA1','SHA3-256','SHA3-384','SHA3-512','SHA-256','SHA-512'};

		public inputData() {
			this.hashType = 'SHA-256';
		}
		public inputData(String s) {
			this();
			this.source = s;
		}
		public inputData(String s, String h) {
			this(s);
			if(!this.algorithms.contains(h)) {
				h = 'SHA-256';
			}
			this.hashType = h;
		}
	}
	public static HashStringActionException newHashStringActionException(String message) {
		HashStringActionException err = new HashStringActionException(message);
		err.setMessage(message);
		return err;
	}
}