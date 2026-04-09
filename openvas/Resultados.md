## 1 
Result: ICMP Timestamp Reply Information Disclosure
ID:	5de49da7-dd60-486c-8edc-1828e28bc6ba  Created:	Thu, Apr 9, 2026 8:31 PM Coordinated Universal Time  Modified:	Thu, Apr 9, 2026 8:31 PM Coordinated Universal Time  Owner:	admin 
Information
User Tags
(0)
Vulnerability
Name
ICMP Timestamp Reply Information Disclosure
Severity
2.1 (Low)
QoD
80 %
Host
172.21.0.2
Location
general/icmp
Summary
The remote host responded to an ICMP timestamp request.
Detection Result
The following response / ICMP packet has been received:
- ICMP Type: 14
- ICMP Code: 0
Insight
The Timestamp Reply is an ICMP message which replies to a
Timestamp message. It consists of the originating timestamp sent by the sender of the Timestamp as
well as a receive timestamp and a transmit timestamp.
Detection Method
Sends an ICMP Timestamp (Type 13) request and checks if a
Timestamp Reply (Type 14) is received.
Details:
ICMP Timestamp Reply Information Disclosure OID: 1.3.6.1.4.1.25623.1.0.103190
Version used:
2025-01-21T05:37:33Z
Impact
This information could theoretically be used to exploit weak
time-based random number generators in other services.
Solution
Solution Type:
Mitigation
Various mitigations are possible:

- Disable the support for ICMP timestamp on the remote host completely

- Protect the remote host by a firewall, and block ICMP packets passing through the firewall in
either direction (either completely or only for untrusted networks)
References
CVE
CVE-1999-0524
CERT
DFN-CERT-2014-0658
CB-K15/1514
CB-K14/0632
Other
https://datatracker.ietf.org/doc/html/rfc792
https://datatracker.ietf.org/doc/html/rfc2780

## 2
Result: OS Detection Consolidation and Reporting
ID:	dc9df4f3-ef88-456a-8b5f-d64878f17758  Created:	Thu, Apr 9, 2026 8:31 PM Coordinated Universal Time  Modified:	Thu, Apr 9, 2026 8:31 PM Coordinated Universal Time  Owner:	admin 
Information
User Tags
(0)
Vulnerability
Name
OS Detection Consolidation and Reporting
Severity
0.0 (Log)
QoD
80 %
Host
172.21.0.2
Location
general/tcp
Summary
This script consolidates the OS information detected by several
VTs and tries to find the best matching OS.

Furthermore it reports all previously collected information leading to this best matching OS. It
also reports possible additional information which might help to improve the OS detection.

If any of this information is wrong or could be improved please consider to report these to the
referenced community forum.
Detection Result
Best matching OS:

OS:           Linux Kernel
CPE:          cpe:/o:linux:kernel
Found by VT:  1.3.6.1.4.1.25623.1.0.102002 (Operating System (OS) Detection (ICMP))
Concluded from ICMP based OS fingerprint
Setting key "Host/runs_unixoide" based on this information
Detection Method
Details:
OS Detection Consolidation and Reporting OID: 1.3.6.1.4.1.25623.1.0.105937
Version used:
2026-03-27T15:50:34Z
References
Other
https://forum.greenbone.net/c/vulnerability-tests/7

## 3
Result: CPE Inventory
ID:	14d48b37-2823-4f01-b216-b4688c447731  Created:	Thu, Apr 9, 2026 8:34 PM Coordinated Universal Time  Modified:	Thu, Apr 9, 2026 8:34 PM Coordinated Universal Time  Owner:	admin 
Information
User Tags
(0)
Vulnerability
Name
CPE Inventory
Severity
0.0 (Log)
QoD
80 %
Host
172.21.0.2
Location
general/CPE-T
Summary
This routine uses information collected by other routines about
CPE identities of operating systems, services and applications detected during the scan.

Note: Some CPEs for specific products might show up twice or more in the output. Background:

After a product got renamed or a specific vendor was acquired by another one it might happen that
a product gets a new CPE within the NVD CPE Dictionary but older entries are kept with the older
CPE.
Detection Result
172.21.0.2|cpe:/o:linux:kernel
Detection Method
Details:
CPE Inventory OID: 1.3.6.1.4.1.25623.1.0.810002
Version used:
2022-07-27T10:11:28Z
References
Other
https://nvd.nist.gov/products/cpe

## 4
Result: Traceroute
ID:	389bd03b-ccbf-4d14-a17a-25e423cac3bf  Created:	Thu, Apr 9, 2026 8:31 PM Coordinated Universal Time  Modified:	Thu, Apr 9, 2026 8:31 PM Coordinated Universal Time  Owner:	admin 
Information
User Tags
(0)
Vulnerability
Name
Traceroute
Severity
0.0 (Log)
QoD
80 %
Host
172.21.0.2
Location
general/tcp
Summary
Collect information about the network route and
network distance between the scanner host and the target host.
Detection Result
Network route from scanner (172.21.0.4) to target (172.21.0.2):

172.21.0.4
172.21.0.2

Network distance between scanner and target: 2
Insight
For internal networks, the distances are usually
small, often less than 4 hosts between scanner and target. For public targets the
distance is greater and might be 10 hosts or more.
Detection Method
A combination of the protocols ICMP and TCP is used
to determine the route. This method is applicable for IPv4 only and it is also known as
'traceroute'.
Details:
Traceroute OID: 1.3.6.1.4.1.25623.1.0.51662
Version used:
2022-10-17T11:13:19Z

## 5
Result: IP Forwarding Enabled - Active Check
ID:	ac8925ec-8128-42f1-ba85-28419e70a37a  Created:	Thu, Apr 9, 2026 8:31 PM Coordinated Universal Time  Modified:	Thu, Apr 9, 2026 8:31 PM Coordinated Universal Time  Owner:	admin 
Information
User Tags
(0)
Vulnerability
Name
IP Forwarding Enabled - Active Check
Severity
0.0 (Log)
QoD
70 %
Host
172.21.0.2
Location
general/tcp
Summary
Checks if the remote host has IP forwarding enabled.
Detection Result
It was possible to route a TCP packet through the target host and received an answer which means IP forwarding is enabled.
Detection Method
Sends a crafted Local Link Layer (LLL) frame and checks the
response.
Details:
IP Forwarding Enabled - Active Check OID: 1.3.6.1.4.1.25623.1.0.147205
Version used:
2021-12-03T08:27:06Z
References
CVE
CVE-1999-0511


## 6
Result: Hostname Determination Reporting
ID:	c38a0a52-127e-45bd-9aaf-27c1e58c2929  Created:	Thu, Apr 9, 2026 8:34 PM Coordinated Universal Time  Modified:	Thu, Apr 9, 2026 8:34 PM Coordinated Universal Time  Owner:	admin 
Information
User Tags
(0)
Vulnerability
Name
Hostname Determination Reporting
Severity
0.0 (Log)
QoD
80 %
Host
172.21.0.2
Location
general/tcp
Summary
The script reports information on how the hostname of the target
was determined.
Detection Result
Hostname determination for IP 172.21.0.2:

Hostname|Source
backend.mi_red|Reverse-DNS
Detection Method
Details:
Hostname Determination Reporting OID: 1.3.6.1.4.1.25623.1.0.108449
Version used:
2022-07-27T10:11:28Z