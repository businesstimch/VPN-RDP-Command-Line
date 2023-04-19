@ECHO OFF
set VPNCliPath="%ProgramFiles(x86)%\Cisco\Cisco AnyConnect Secure Mobility Client\vpncli.exe"
color 0A
:PROMPT

ECHO.
ECHO ### VPN Connector v1.0 ### // Made by Kyungmin Choi (Question or Free Coffee? Contact me!)
ECHO.
ECHO -----------------------------------------------------------
ECHO Please slect a menu below by typing: (1,2,3,4 or 5 to exit)
ECHO -----------------------------------------------------------
ECHO.
ECHO  1: Connect to VPN 1
ECHO  2: Connect to VPN 2
ECHO  3: Disconnect
ECHO  4: Disconnect and Exit
ECHO.
ECHO  5: Remote Desktop 0.0.0.0
ECHO  6: Remote Desktop 0.0.0.0
ECHO  7: Remote Desktop 0.0.0.0
ECHO  8: Remote Desktop 0.0.0.0
ECHO.

SET /P M=Select a menu (To exit, ENTER): 

IF %M%==1 GOTO 1
IF %M%==2 GOTO 2
IF %M%==3 GOTO 3
IF %M%==4 GOTO 4
IF %M%==5 GOTO 5
IF %M%==6 GOTO 6
IF %M%==7 GOTO 7
IF %M%==8 GOTO 8
GOTO EOF

:1
CALL %VPNCliPath% -s < .\VPN-Settings\VPN1
GOTO PROMPT

:2
CALL %VPNCliPath% -s < .\VPN-Settings\VPN2
GOTO PROMPT

:3
CALL %VPNCliPath% disconnect
GOTO PROMPT

:4
CALL %VPNCliPath% disconnect
GOTO EOF

:5
SET RDPIP=0.0.0.0
GOTO RDP

:6
SET RDPIP=0.0.0.0
GOTO RDP

:7
SET RDPIP=0.0.0.0
GOTO RDP

:8
SET RDPIP=0.0.0.0
GOTO RDP

:RDP
CALL mstsc /v:%RDPIP%
GOTO PROMPT

:EOF