## Activity File: Mobile Evidence Analysis
 
- In this activity, you will play the role of a digital forensics investigator.
 
- You are tasked with analyzing evidence and creating a spreadsheet that profiles the details of Peter's iPhone.
 
- This will serve as your preliminary documentation for the remaining activities.
 
- To complete this task, you will need to use Autopsy's File Search by Attributes and Keyword Search functions.
 
- A junior investigator has provided you with a list of directories that are considered highly relevant to your preliminary case information. Use this document to help guide your research:

  - [iPhone Forensic Image: Important Databases and Files](https://docs.google.com/document/d/1MN4aTz8qsPh1SayR9LWKVNIGndLcSVrg1SPHj4NtVLs/edit)
 
- Fill out your findings in the following worksheet: 
  - [iPhone Details Worksheet](https://docs.google.com/document/d/1JWb0TA0Lw0AD4MM9fvbaVQAgCvA_Fkz7cgWocBTJot0/edit)
  - You will need to make yourself a copy in order to edit it.  

### Instructions

1. Start the Kali VM and open a terminal.

2. Navigate to `/root/autopsy-files/autopsy-4.10.0/bin`.
 
3. Type `./autopsy` to launch Autopsy.
 
4. Open the existing case created by the junior investigator:
 
    - Case name: `Pure Gold Credit Union Case`
    - Case number: `1EZ215-P`
  
5. Document the following information from the junior investigator:
  
    - MD5 and SHA-265 hashes of the iPhone disk image have been provided by the junior investigator: 
      - MD5 hash: `34c4888f095dc3241330462923f6fea5`
      - SHA-256 hash: `71aed05a86a753dec4ef4033ed7f52d6577ccb534ca0d1e83ffd27683e621607` 
 
    - Device information:  
      - Device model
        - If Autopsy is not able to identify the version of the iPhone, which two does Autopsy think it could be?
      - Device host name
          - Hint:  Look for `\Accountnames` which indicates the device name.
      - OS version #
          - Hint:  Look for the letter `v` and a number which indicates the version.
      - Device serial #
      - Integrated Circuit Card ID (ICCID) number
      - International Mobile Equipment Identification (IMEI) number

    
    - Peter's information:
    
      - Peter's phone number
      - Peter's email addresses
 
Be sure to document all of the required information in the iPhone Details Worksheet.
 
#### Bonus
 
- Research the two types of IDs below and identify how they are used to identify mobile devices:
 
   - IMEI number
   - ICCID

----
 
&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary.   All Rights Reserved.
