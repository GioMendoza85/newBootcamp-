## Activity File: Alert - ET MALWARE Possible

In this activity, you continue in your roles as an SOC analyst for the California DMV.

- Your organization has just experienced another attack. Snort identified this attack as an emerging threat: an executable download designed to upload data to the attacker.

- You will need to discover the intent of the attack and prepare a report that includes the tactics, techniques, and procedures used by the adversary.

### Instructions

- Use the following indicators of attack to complete the activity: 

    - Source IP: Attacker = `195.2.253.92`
    - Destination IP: Victim = `192.168.3.35`
    - Snort message: `ET MALWARE Possible Windows executable sent when remote host claims to send html content`
    - Destination port: `1032`

1. Open the Security Onion analyst console and filter the source IP `195.2.253.92`. 

2. Click on an alert that contains the following Suricata Message: `ET MALWARE Possible Windows executable sent when remote host claims to send html content`. Click on **Transcript** and answer the following questions:

    - What is the name of the file included in the SRC HTTP Response?

    - Was the file compressed before it was exfiltrated and if so, what compression method did the attacker use?

    - Why would an attacker compress files before exfiltrating them?

    - Scroll to the bottom of the Transcript window. Name the four DLL files imports.

Close the Transcript window.

3. Back in Security Onion, download the PCAP and open it in NetworkMiner. by dright-clicking on the Alert ID that contains the Snort message `ET MALWARE Possible Windows executable sent when remote host claims to send html content`.

4. Click on the **Files (1)** tab and open the folder where the `go.exe` virus is stored on the local hard drive.

5. Open the Chromium browser in Security Onion and bring up the www.virustotal.com webpage.

6. Drag the `go.exe` file into the VirusTotal website and answer the following questions:

    - How many virus signature matches are there?

    - Go to the **Details** section of VirusTotal and scroll to the **Imports** section. Do the four files listed match what you entered as the four DLL file imports?

    - Scroll to the top of the **Details** window, and take note of the PEiD line. Research and define what **UPX** is.

7. In the VirusTotal website, click on the **Relations** tab and answer the following:

    - How many URLs were contacted?

    - How many domains were contacted?

    - How many IP addresses were contacted?

    - What three countries were contacted during this attack? 

        - Hint: Use Google.

8. In the VirusTotal website, click on the **Behaviors** tab and answer the following:

    - How many registry keys were deleted?

9. Back at the Security Onion analyst console, click on the **IP Resolution** tab and answer the following questions:

    - What is the person, address, and phone number of the DNS registrant associated with the IP `192.2.253.92`?

    - What is the email address for reporting abuse?

---

© 2024 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.


