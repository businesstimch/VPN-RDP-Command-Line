## Auto VPN Connector (For Windows)

I made this script with the aim of **reducing the time taken to establish a VPN connection**.<br />
This will have a substantial impact on our development performance, ***especially when you need to frequently establish and terminate*** the VPN and RDP connection.

### Before Start
- For VPN, make sure you installed 'Cisco Anyconnect Client'.
- Make sure you have ***'vpncli.exe'*** file located in ***'%ProgramFiles(x86)%\Cisco\Cisco AnyConnect Secure Mobility Client\'***.
- Make sure you terminated GUI 'Cisco Anyconnect Client' process completely.
- Once you establish a connection to a VPN, the connection will remain active even if you close the terminal. To disconnect from the VPN, choose either "Disconnect VPN" or "Disconnect VPN then Exit".

### Configuration
- Open 'VPN1', 'VPN2' file with text editor
- Update with your ***VPN ID*** and ***Password*** (DO NOT edit the first and the last line).<br /><br />
***For Example(Before):***
<br />
```javascript
connect vpn.example.com
Insert Your VPN ID
Insert Your VPN Password
y
```
<br />
***For Example(After):***
<br />
```javascript
connect vpn.example.com
john.doe
12345!@#$
y
```

### How to Run?
- Download or clone, then place in any folder you want.
- Then run, 'Start.bat'.
- Enjoy coding!