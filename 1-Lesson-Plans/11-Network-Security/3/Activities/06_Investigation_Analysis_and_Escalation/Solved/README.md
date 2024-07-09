## Solution Guide: Investigation, Analysis, and Escalation

 The goal of this activity was to reinforce concepts related to the investigation, analysis, and escalation process of enterprise security monitoring.

---

**Investigation and Analysis**

1. **Group By Source IP, Name** tab, what is the top source IP?

    - `192.168.10.124`

2. **Group By Destination IP, Name**, what is the top destination IP?

    - `192.168.10.101`

3. **Group By Sensor, Source IP/Port, Destination IP/Port, Name** exclude events with an event severity label of `low`, answer the following questions: 

   - What is the top source/destination IP pair?

   - Source: `192.168.10.124`
   - Destination: `10.40.0.103`
   
   - What is the rule name?

        - `GPL SNMP public access udp`

   - What is the event severity label?

        - `medium`


**Investigation and Escalation**

Using Security Onion, find and select on the following alert: 

- Source IP address: `192.168.10.128`.

- Destination IP address: `200.223.236.53`.

- Event message: `ET P2P BitTorrent peer sync`.

Go to Hunt by clicking on it in the left column of Security Onion, and enter the following query `destination.ip: 200.223.236.53 AND source.ip: 192.168.10.128 AND rule.name:"ET P2P BitTorrent peer sync"`. 

Click on the destination IP in the results, and select Clipboard and `Copy this value only`.  

- Then click `Kibana` in the left column

- Filter using **destination.ip: **. Paste the IP from the clipboard.

- Make sure that you are viewing the last year of data.


Answer the following questions:

1. What is the event count shown under `Security Onion - All Logs`?

- `14`

2. What is the destination port? 

- `51275`

Go back to Security Onion Hunt. 

Using the same alert click on the **destination IP** and go to Actions, VirusTotal to lookup if the IP address has been flagged as malicious.

3. Was the IP address considered malicious?

- `No`

Continue to review the event fields in the Hunt Dashboard and answer the following questions

4. What is the rule category that triggered the alert?

- `Potential Corporate Privacy Violation`

5. What is the country name for the destination IP?

- `Brazil`

Now that you have gathered all the information needed to fully determine the scope of this particular incident, you’re ready to engage your incident response team.
---

© 2024 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.