## 11.3 Student Guide: Enterprise Security Management (ESM)

### Overview

In today's class, you will advance your network security knowledge by learning enterprise security management (ESM) and how host-based OSSEC IDS technology plays a critical role in endpoint telemetry. You will expand your investigations of threats using Security Onion's Elastic Stack and the web-based data analytics visualization tool, Kibana using a process known as "Cyber Threat Hunting".

### Class Objectives

By the end of today's class, you will be able to:

- Analyze indicators of attack for persistent threats.

- Use enterprise security management to expand an investigation.

- Use OSSEC endpoint reporting agents as part of a host-based IDS alert system.

- Investigate threats using various analysis tools.

- Escalate alerts to senior incident handlers.

### Module Day 3 Contents

- [x] [01. Security Onion Setup](#01-security-onion-set-up)
- [x] [02. Overview and Alert - C2 Beacon Setup](#02-overview-and-alert---c2-beacon-setup-020)
- [x] [03. Activity: C2 Beacon](#03-activity-c2-beacon)
- [x] [04. Activity Review: C2 Beacon](#04-activity-review-c2-beacon)
- [x] [05. Enterprise Security Management/Monitoring](#05-enterprise-security-managementmonitoring)
- [x] [06. Activity: Investigation, Analysis, and Escalation](#06-activity-investigation-analysis-and-escalation)
- [x] [07. Break](#07-break)
- [x] [08. Activity Review: Investigation, Analysis, and Escalation](#08-activity-review-investigation-analysis-and-escalation)
- [x] [09. Threat Hunting - Cyber Threat Intelligence](#09-threat-hunting---cyber-threat-intelligence)
- [x] [10. Activity: Threat Hunting - Cyber Threat Intelligence](#10-threat-hunting---cyber-threat-intelligence)
- [x] [11. Activity Review: Threat Hunting - Cyber Threat Intelligence](#11-review-threat-hunting---cyber-threat-intelligence-activity)


### Slideshow

- The lesson slides are available on Google Drive here: [11.3 Slides](https://docs.google.com/presentation/d/1nbp5qmwqeqM1aT2pzqYYEI4ZDbTwJrkcEGgKfg4u4ac/edit)

___

### 01. Security Onion Set Up

- [Activity File: Security Onion Setup](Activities/01_Security_Onion_Setup/README.md)

[<- Back to Module Contents](#module-day-3-contents)

---

###  02. Overview and Alert - C2 Beacon Setup

#### Network Security Recap

- On Day 1, we covered how firewalls protect a network. On Day 2, we expanded our layers of network security to cover IDS and IPS systems.

- Today, we will turn our focus to learning how an adversary conducts network security attacks. Then, through a process known as cyber threat hunting, we will use advanced network security tools, such as Security Onion and ELK, to gain a deeper understanding and situational awareness of a network's security posture.

#### C2 Alert Beacon Set Up

This activity in will apply your knowledge of NSMs. 

- We'll explore how **command and control (C2) servers** are used to create a specific type of alert against attacks that use persistence as part of its attack campaign.

- NSM plays a critical role in implementing a defense-in-depth approach, serving as an additional layer of protection when an adversary bypasses defenses. 

Before diving into the activity, let's take a look at command and control servers. 

#### Command and Control

- Servers that are compromised make callbacks to C2 servers. These callbacks, referred to as "keep alives", serve as beacons that keep the back channel open and let the C2 servers know that they are ready to receive commands. This enables cybercriminals to have access in and out of the network at all times. 

- These keep alive beacons activate a specific alert. In the screenshot below, we see an alert identified as a C2 beacon activity. Note it includes the text `ET MALWARE Zbot POST Request to C2` in the Rule. 

  ![Security Onion Alert](Images/SO%20Alert.png)

- There is a reference URL specified within the rule option.

   - Sometimes, writers of Suricata rules will put additional info in their rule message to help network defenders.

      - The example below shows the following message: `Malware Command and Control Activity Detected`

   - With this information, network defenders can form mitigation strategies to help improve their security posture.

   

![Suricata Rule](Images/SO%20Message.png)

[<- Back to Module Contents](#module-day-3-contents)

---

### 03. Activity: C2 Beacon

- [Activity File: C2 Beacon](Activities/04_C2_Beacon/Unsolved/README.md)

[<- Back to Module Contents](#module-day-3-contents)

---

### 04. Activity Review: C2 Beacon

- [Solution Guide: C2 Beacon](Activities/04_C2_Beacon/Solved/README.md)

[<- Back to Module Contents](#module-day-3-contents)

---

### 05. Enterprise Security Management/Monitoring 

Now that we've learned about the benefits of using firewalls and NSM, we must move from traditional network-based IDS engines, such as Snort, to the more all-encompassing **enterprise security monitoring** (**ESM**), which includes endpoint telemetry.

#### OSSEC

Firewalls and NSM cannot see inside of encrypted traffic. This is major limitation because:

- In most cases, malware will be transmitted from attacker to victim in an encrypted state, in order to hide its presence and intent. This also serves as a method of obfuscation to bypass IDS detection engines.

- Since malware cannot activate in an encrypted state, it must be decrypted. This can only happen after it is installed on the victim’s machine. This is where ESM and, more specifically, endpoint telemetry become relevant.

ESM uses **OSSEC (Open Source Security)** to provide visibility at the host level, where malware infection takes place after it's decrypted.

- OSSEC is the industry's most widely used host-based IDS (HIDS). It has many configuration options and can be tailored to the needs of any organization. 

- **Endpoint telemetry** as host-based monitoring of system data. 

   - OSSEC agents are deployed to hosts and collect syslog data. This data generates alerts that are sent to the centralized server, Security Onion. 

   - Security administrators can then use Security Onion to form a detailed understanding of the situation and reconstruct a crime.

#### Elastic Stack

OSSEC monitors all of the syslog data that it sees. However, not every syslog entry will generate an alert. Security admins will need to switch to other tools to fully analyze packet captures.

These other tools are known as the **Elastic (ELK) Stack**, the engine that operates within Security Onion. It consists of three important components:

1. **Elasticsearch** is considered the heart of the Elastic Stack. It is a distributed, restful search and analytics engine built into Security Onion that is capable of addressing thousands of data points seen within network traffic. It helps security administrators locate the expected and uncover the unexpected.

2. **Logstash** is an open-source, server-side data processing pipeline built into Security Onion. It ingests data from many sources at the same time by transforming it and sending it to designated log files, known as stashes.

3. **Kibana** is a browser-based visualization interface. It uses thousands of data points from the Elastic Stack as its core engine.

![OSSEC Log Management](Images/OSSEC.png)

These tools work together with OSSEC to make a comprehensive alert data process:

1. OSSEC agents generate an alert.

2. OSSEC sends alert data gathered from syslog to Security Onion's OSSEC server.

3. The OSSEC-generated syslog alert is written to Logstash for storage.

4. Log data is ingested into the Elasticsearch analytics engine, which parses hundreds of thousands of data points to prepare for data presentation.

5. Users interact with the data through the Kibana web interface.

#### Investigation, Analysis, and Escalation Demo

In this demo we will discuss using several tools in the ELK stack. We will focus on how these tools work, and not a specific attack. 

- We will also focus on the process of escalation within a Security Operations Center:

   - A junior analyst working in a Security Operations Center will belong to a multi-tier group of analysts. Junior analysts typically perform the initial triage of alerts and then escalate these events to senior incident responders.

- This process and the tools involved will be our focus.

We'll continue our investigation by looking for more Zbot traffic:

- In Security Onion, click on the `Alerts` icon and modify the way the Alerts are displayed.

- We may need to change the date range to ensure we see all the alert data in our system. By default, it only displays the alerts from the last 24 hours. Make the following modifications.

   - 1. Change the date range to start with 2010/01/02 and end with today's date.

   - 2. Type Zbot into the filter

   - 3. Click `Refresh` to update the results
   
   ![SO Zbot Search](Images/SO%20Zbot%20search.png)

- The results show that there are other alerts that look like they might contain Zbot traffic. Add the `ET MALWARE Zbot Generic URI/Header Struct .bin` to the case that was created in the last activity. 

   - 1. Click the blue triangle with the exclamation point.

   - 2. Select the Malware Zbot Case

   ![SO Add to Case](Images/SO%20Add%20to%20Case.png)


- Explain that we are now going to take a look at the status of the case we created.

   - Click on `Cases` on the left-hand side.

   - Then click the `binoculars` next to the case to view the case contents.

   ![SO View Case](Images/SO%20Case%20View.png)

- From here, we can click on `Observables` and pivot to `Hunt` for additional instances of Zbot.

   - 1. Click `Observables`

   - 2. Then click the `crosshairs` icon next to the observable.

   ![SO View Case](Images/SO%20Case%20Hunt.png)

- We should now see the `Hunt Dashboard`. From here, we can see that `ET MALWARE Zbot POST Request to C2` has been added to the SO Hunt Query. This will limit results to those containing that name.

   - The dashboard also presents some basic metrics in regards to the incident.

   - There is also an incident count.

    ![SO Hunt Dashboard](Images/SO%20Hunt%20Dashboard.png)


- Scrolling down, reveals all of the events that the query returns.

   - Within the event fields, we can see a reference URL that provides additional information about this particular type of Malware.

   ![Security Onion Rule Reference url Links](Images/SO%20Rule%20Reference.png)

   - We can also click on any field, for example rule name, and perform a quick Google search on it to learn more about that particular field's contents.

   ![Google Lookup 1](Images/SO%20Google.png)


- Explain that next we'll use Elastic Stack's data analytics engine through Kibana's web-based visualization tool. 

- Kibana will allow us to look at the data and visualize it in different ways.

Launch Kibana by doing the following:

   - Click on **Kibana** located in the bottom left menu.

   - A new tab will open, and the **Kibana** interface will appear. 

   ![Kibana Security Onion Pivot](Images/SO%20Kibana.png)

- After Kibana launches, you may be prompted to log in. If so, log in with the same credentials used for the Security Onion client.

  - Once the web browser tab launches, the data should be similar to what is displayed within the Security Onion Alerts.

 

   ![Kibana Dashboard Indicator](Images/SO%20Kibana%20Dashboard.png)

- Explain that we have now started using the powerful Elastic Stack data analytics engine.

   - Remind students that Elastic Stack is the heart of Security Onion's ESM capabilities. Kibana is the interface that provides insight into endpoint telemetry by interpreting the OSSEC agent syslog data.

In this next example, we'll further our investigation by looking deeper into the `ET Malware Zbot . . .` alert.

   - Click the `+` sign next to the alert.

   - This will limit results to just those matching that alert.

   ![Kibana Zbot Alert](Images/SO%20Kibana%202.png)

- At this point in an investigation, we are looking for more evidence in relation to the Zbot malware.

   - For example, if we look at what non-local IP addresses are being used in this traffic, we might get a clearer picture of what is occurring on the network.

   - Review the image below, there are 8 instances occurring with the remote IP address of `188.72.243.72`. 

    ![Kibana review results for Alert](Images/SO%20Kibana%203.png)

   - Let's add destination IP `188.72.243.72` by clicking its `+` sign

   - Now remove `rule.name: ET MALWARE Zbot POST Request to C2` by clicking the `x` next to it.

   - This will now just show us the traffic relating to `188.72.243.72`.

   ![Kibana limit results to IP](Images/SO%20Kibana%204.png)

   - As we can see from the results, it looks like there is more suspicous looking traffic coming from `188.72.243.72.` We can probably come to the following conclusion.

      - It is likely that there is malicious activity occurring from that IP address.

      - Action should be taken to block all traffic related to that IP address.
      
      - Further analysis may be required.

- Explain that once we determine an alert needs further analysis, we can update the case and escalate the event to a senior incident handler for further review.

   - Return to your Security Onion tab.

   - Click **Cases** in the left column.

   - Select **Binoculars** on the Zbot Malware case.

   - Click **Case description . . .** and add the following "Possible C2 infection detected" and click **Save**.

   - Change the **Status** to in progress.

   - Change the **Severity** to critical.

   - Add a comment: "Zbot Malware may have been downloaded. The 188.72.243.72 IP address looks suspicious."

   - Click **Add**.

![SO Escalate](Images/SO%20Escalate%20Case.png)

 **Note**: In a production environment, the case could be assigned to a senior analyst for more thorough inspection. Under Summary, there is an option to assign the case to another analyst.

We can verify the escalated event by:

- Selecting the **Cases** from the left column.

- Select the **Binoculars** for the Case.

- Then select **History**.

- Verifying the note that was entered by the junior analyst.

#### Summary

- This demonstration covered how to conduct investigations using various threat hunting techniques. We focused on a few of the many ways to start an investigation.  

- ESM (enterprise security monitoring) includes endpoint telemetry, host-based monitoring of system data that uses OSSEC collection agents to gather syslog data.

- To investigate network-based IDS alerts, security administrators must use enterprise security monitoring, which includes visibility into endpoint OSSEC agents.

- IDS alerts are snapshots in time. They raise questions that need answers. With the use of Security Onion, security admins can use PCAPs to reconstruct a crime.

[<- Back to Module Contents](#module-day-3-contents)

---

### 06. Activity: Investigation, Analysis, and Escalation

- [Activity File: Investigation, Analysis, and Escalation](Activities/06_Investigation_Analysis_and_Escalation/Unsolved/README.md)

[<- Back to Module Contents](#module-day-3-contents)

---

### 07. Break

[<- Back to Module Contents](#module-day-3-contents)

---

[<- Back to Module Contents](#module-day-3-contents)

---

### 07. Break

[<- Back to Module Contents](#module-day-3-contents)

---


### 08. Activity Review: Investigation, Analysis, and Escalation

- [Solution Guide: Investigation, Analysis, and Escalation Activity](Activities/06_Investigation_Analysis_and_Escalation/Solved/README.md)

[<- Back to Module Contents](#module-day-3-contents)

---

### 09. Threat Hunting - Cyber Threat Intelligence

Threat intelligence is important at every level of government and public sector organizations, which use it to determine acceptable risk and develop security controls that inform budgets.

Malicious actors have various motivations. For example:
- Hacktivist organizations are politically motivated.
- Criminal hackers are financially motivated.
- Cyber espionage campaigns, most typically associated with nation states, steal corporate secrets.

Knowing the motivations for attacks against your organization will help you determine the security measures necessary to defend against them.

#### Threat Intelligence Cards

As a member of the Computer and Incident Response Team (CIRT), one of your responsibilities is to establish a threat intelligence card, which documents the TTPs used by an adversary to infiltrate your network.

- When handling a large-scale intrusion, incident responders often struggle with organizing intelligence-gathering efforts.

- Threat intelligence cards are shared among the cyber defense community, allowing organizations to benefit from the lessons learned by others.

Cyber threat intelligence centers on the triad of actors, capability, and intent, along with consideration of TTPs, tool sets, motivations, and accessibility to targets.  

- These factors inform situational aware decision making, enhanced network defense operations, and effective tactical assessments.

[<- Back to Module Contents](#module-day-3-contents)

---

### 10. Threat Hunting - Cyber Threat Intelligence 
### 10. Threat Hunting - Cyber Threat Intelligence 

- [Activity File: Threat Hunting - Cyber Threat Intelligence](Activities/09_Threat_Hunting/Unsolved/README.md)

[<- Back to Module Contents](#module-day-3-contents)

---

### 11. Review: Threat Hunting - Cyber Threat Intelligence Activity 

- The individuals results from this activity will vary. The goal of this activity is intended to demonstrate how cyber professionals can use all of the skills covered in this module to conduct an investigation.

[<- Back to Module Contents](#module-day-3-contents)

---

© 2024 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
