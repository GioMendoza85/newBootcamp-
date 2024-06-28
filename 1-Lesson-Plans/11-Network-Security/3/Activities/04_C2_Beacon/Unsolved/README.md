## Activity File: Alert - C2 Beacon

In this activity, you will continue your role as an SOC analyst for the California Department of Motor Vehicles (DMV).

- Your organization has just experienced another, more sophisticated attack. It’s a red alert that Snort has identified as an emerging threat: a C2 beacon acknowledgement attack.

- The entire network is down across the state. As long as the network is down, none of the DMV offices can issue or renew licenses and registrations, or complete driving tests.

- As part of the Computer Incident and Response Team (CIRT), you need to establish an attacker profile that includes the tactics, techniques, and procedures used by the adversary, and document all of your findings. Like a real security analyst, you may need to research other sources to answer all the questions.  

### Instructions

Use the following indicator of attack:

- Destination IP: `188.124.5.100`

- Source IP: `192.168.3.35`

- Snort Message: `ET MALWARE Zbot POST Request to C2`

**Note:** You'll notice many attacks targeting the victim IP address. Please make sure to focus on the `ET MALWARE Zbot POST Request to C2` attack.

Open Security Onion and look for `C2` and `Drilldown` to see the details. Filter the results for the source IP `192.168.3.35`

1. What is the rule that triggered this alert?


2. According to the rule, what is the destination port?


3. Taking a closer look at the event fields, what is the rule category?


4. What is the event module that triggered the alert?

 (Use this link to answer the following questions: [A Look At The New Gameover Zeus Variant](https://www.zscaler.com/blogs/security-research/look-new-gameover-zeus-variant).)

5. What type of threat is this?

6. Did this threat modify Windows registry keys?

7. Why does this threat modify Windows registry keys?

9. What does C2 stand for and what is it?

10. What is a sign that a computer may be under the control of a C2 server?

#### Bonus Questions

11. Name one of the most popular techniques an adversary uses to infect a host with a botnet.

12. What are two ways an organization can mitigate this type of a threat?

13. How far up the cyber kill chain did this attack get?

14. What procedure does this threat use to hide when it's discovered?

15. Why is this threat persistent?

16. What tactic does this threat use to remain hidden and unnoticed?

17. Create a `new case` based off of your findings by clicking on the alert.

    - Click the title and change it to `Zbot Malware Discovery`

    - Scroll down and click `ADD` to include this event as an `Observable` 

---

© 2024 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
