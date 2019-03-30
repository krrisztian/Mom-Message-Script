# Introduction

This is an automated script that sends a randomized message to my mom every ~2 days at ~3PM on Facebook Messenger.
Preferrablly, install it on your personal computer so that it only runs if you are actually alive. Just imagine what a pain that would be if not...

## Setup
1. Install node and npm through your preferred [install method](https://nodejs.org/en/download/package-manager/)
1. `git clone https://github.com/krrisztian/Mom-Message-Script.git && cd Mom-Message-Script`
2. `npm install messer`
3. Authenticate Messer for the first time `node_modules/.bin/messer`
4. Test messer on a friend preferrably `node_modules/.bin/messer --command="m \"Yourmoms Fullnamehere\" Hey just testing stuff, just ignore this"`
5. Edit the "Yourmoms Fullnamehere" field
6. Make script executable `chmod +x momMessageScript.sh`
7. Test that it works on the same friend `./momMessageScript.sh`
8. Modify name to your Mom's
8. `crontab -e` -> `0 15 */2 * * FULLDIRPATH/Mom-Message-Script/momMessageScript.sh`


## Credit to the following projects
- [Messer by mjkaufer](https://github.com/mjkaufer/Messer)
- [Nimrod](https://www.nimrod-messenger.io)
