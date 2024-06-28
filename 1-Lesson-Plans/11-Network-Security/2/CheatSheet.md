# Network Security Week  Day 2 CheatSheet

## Terms and References

**NIDS:**	Network Intrusion Detection System filters an entire subnet on a network.

   - Matches all traffic to a known library of attack signatures.

   - Passively examines network traffic at the points it is deployed.

   - Relatively easy to deploy and difficult to detect by attackers.

**HIDS:**	Host-based Intrusion Detection Systems run locally on a host-based system or user’s workstation or server.

   - Acts as a second line of defense against malicious traffic that successfully bypasses a NIDS.

   - Examines entire file systems on a host, compares them to previous snapshots or a baseline, and generates an alert if there are significant differences between the two.

**IDS:**	An Intrusion Detection System (IDS) is like a firewall that also reads the data in the packets it inspects, issues alerts or alarms, and blocks malicious traffic if configured to do so.

**IPS:**	Intrusion Prevention System does everything that an IDS can do, but can also respond to attacks. An IDS doesn’t alter or react to packets as they enter the network. An IPS does this by blocking malicious traffic and preventing it from being delivered to a host on the network.

**IOA:**	Indicator of Attack indicates when attacks are happening in real time.

   - Proactive approach to intrusion attempts.

   - Indicate that an attack is currently in progress but a full breach has not been determined or has not occurred yet.

   - Focus on revealing the intent and end goal of the attacker regardless of the exploit or malware used in the attack.

**IOC:**	Indicator of Compromise indicates occurrences of previous malicious activity. 

   - Reactive approach to successful intrusions.

   - Indicate that an attack occurred, resulting in a breach.

   - Used to establish an adversary's techniques, tactics, and procedures (TTPs).

   - Expose all of the vulnerabilities used in an attack, giving network defenders the opportunity to revamp their defense as part of their mitigation strategy, and learn from an attack so it won't happen again.

**NMS:**    Network Monitoring Systems is the process of identifying weaknesses within a network's defense. It also provides organizations with situational awareness of their network.

**TTP:**	Tactics, Techniques, and Procedures

**TAP:**	Test Access Port is a hardware device that provides access to a network. Network taps transit both inbound and outbound data streams on separate channels at the same time, so all data will arrive at the monitoring device in real time.

**SPAN:**	Port mirroring sends a mirror image of all network data to another physical port, where the packets can be captured and analyzed.


---

## Copyright

2024 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.