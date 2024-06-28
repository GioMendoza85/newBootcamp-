## Activity File: Alert - FTP File Extraction

In this activity, you'll continue in your role as an SOC analyst for the California DMV. 

- You deployed Security Onion at the DMV headquarters. Immediately afterwards, your organization experienced an attack. 

- One of your junior security analysts noticed a red alert on their Security Onion console. Snort identified it as an emerging threat for a file transfer using FTP.

- This is the first alert your team has experienced and you must work quickly to examine the alert, determine if any systems were breached, and if any data was supplanted or exfiltrated from the network. 

### Instructions

Log in to the Security Onion VM with the credentials:

- Username: `sysadmin`
- Password: `cybersecurity`

You will also use these credentials to access Security Onion.

- Use the following attack profile provided by your junior analyst to complete this exercise.

    - Destination port: `21`
    - Destination IP: `130.89.149.129` (server)
    - Source IP: `192.168.10.128` (victim)

1. From the Security Onion analyst console, `Group By Destination IP` and filter against the destination IP `130.89.149.129`, and select the alert and click `Drilldown`.

2. Using the information presented in the window, expand the alert, and answer the following questions:

    - In the Event Fields window, what was the FTP server response and what type of file was downloaded?
    
    - What was the name of the rule that triggered this alert?
    
    - What is the direction of traffic flow indicated by this alert?
    
    - What country is the server located?

3. Click on the destination IP address and select VirusTotal from the dropdown.

    - How many virus engine matches come back?

    - Is this server malicious?

4. Change to PCAP view and download the PCAP. Now switch from Security Onion to NetworkMiner, select the **Parameters** tab, and answer the following questions.
 
    - What username and password did the attacker use to log in to the system?
        
    - Was the login successful?
    
    - What is the name of the file the attacker tried to install on the victim's machine?
        
    - Was the file transfer successful?
    
5. In NetworkMiner, click on the **Hosts (2)** tab, right-click the IP `130.89.149.129`, and select **Expand All**. Answer the following questions.

    - What is the MAC or hardware address of the server's network interface card (NIC)?

    - What is the vendor of the NIC for the server’s machine?

    - What is the MAC or hardware address of the victim’s machine?

    - What is the vendor of the NIC for the victim's machine? 

    - What operating system is the victim using?

    - Looking at the Host Details portion of the server window, what URL did the attacker connect to in order to begin the file transfer?


--- 

© 2024 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
