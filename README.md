# DQTech CSM Tool

Windows C# WinForms utility maintained by Phạm Thanh Doản.

## Status
Experimental, unsigned. Not accepted by SignPath Foundation. No claim of
sponsorship or guaranteed removal of security warnings is made.

## Functionality and risks
Registers a room name at https://dqtech.org, checks subscription authorization,
downloads a three-file repair bundle, gracefully closes CSM, stops MySQL,
backs up configuration, replaces intoptiontb files and restarts MySQL.
It can add optional current-user logon/daily Windows scheduled tasks.
Run only on a verified compatible installation with operator consent.
The shared repair bundle must NOT be used on unrelated cafe installations.

## Build
On Windows with .NET Framework developer tools: run ./build.ps1.
Build requires only .NET system libraries. Source does NOT include any CSM,
MySQL or third-party proprietary binaries, database files or credentials.

## Privacy
Upon explicit registration, the room name is sent to dqtech.org. The service
stores a registration ID, token hash, subscription dates and download timestamp.
The service provider may also process the connection IP in normal network logs.
The client stores its token encrypted with Windows DPAPI under ProgramData.
Daily authorization and downloads contact that service; no member table,
SQL password or member names are uploaded by this client.
Do not register or enable automatic running if you do not consent to this.
Uncheck auto startup to stop scheduled launches, then close the application.

## Removal
Uncheck auto startup in the app first (removes both scheduled tasks).
Close the app and remove its Program Files/DQTech/CSMTool installation.
Keep ProgramData/DQTech/CSMTool/backups until recovery is verified; remove
local state manually only when no longer required. Contact the maintainer to
remove the server registration. Uninstall does not alter the MySQL database.

## Code signing policy
No production signing is configured. Maintainer, reviewer and release approver:
Phạm Thanh Doản (repository account to be assigned).
A future signing service must verify CI build provenance and require manual
release approval. Signing is not a malware scan or proof of safe operation.

## SignPath application prerequisites still outstanding
- Publish a maintained public repository and a verifiable CI-built release.
- Confirm eligibility of the subscription service and repair-file distribution.
- Implement product/version metadata and public release/privacy policy.
- Confirm all rights for distributed materials; proprietary backup files excluded.
- Enable repository MFA and signing approval controls.
- Establish verifiable project reputation and complete end-to-end safety tests.

Support: 0977145858 / doan.phamtg@gmail.com
