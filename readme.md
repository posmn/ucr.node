### ucr.node

Ultra Clear node AMI app - runs system, master or gateway node.

**All commands should be executed as root or with `sudo`.**

#### Setup

1. Install `ami` if not installed already
    * `wget https://raw.githubusercontent.com/cryon-io/ami/master/install.sh -O /tmp/install.sh && sh /tmp/install.sh`
2. Create directory for your application (it should not be part of user home folder structure, you can use for example `/mns/lqx1`)
3. Create `app.json` or `app.hjson` with app configuration you like, e.g.:
```json
{
    "id": "ucr1",
    "type": {
        "id": "posmn.ucr.node"
    },
    "configuration": {
        "NODE_PRIVKEY" : "xxxxxxxxxxxxxxxxxxxxxxxxx",
        "DAEMON_CONFIGURATION": {
            "externalip" : "127.0.0.1"
        }
    },
    "user": "ucr",
}
```
*Node types are: `masternode`, `systemnode`.*

1. Run `ami --path=<your app path> setup`
   * e.g. `ami --path=/mns/ucr1`
. Run `ami --path=<your app path> --help` to investigate available commands
5. Start your node with `ami --path=<your app path> start`
6. Check info about the node `ami --path=<your app path> info`

##### Configuration change: 
1. `ami --path=<your app path> stop`
2. change app.json or app.hjson as you like
3. `ami --path=<your app path> setup --configure`
4. `ami --path=<your app path> start`

##### Remove app: 
1. `ami --path=<your app path> stop`
2. `ami --path=<your app path> remove --all`

##### Reset app:
1. `ami --path=<your app path> stop`
2. `ami --path=<your app path> remove` - removes app data only
3. `ami --path=<your app path> start`

##### Remove lqxd database: 
1. `ami --path=<your app path> stop`
2. `ami --path=<your app path> removedb`
3. `ami --path=<your app path> start`

#### Troubleshooting 

Run ami with `-ll=trace` to enable trace level printout, e.g.:
`ami --path=/mns/ucr1 -ll=trace setup`
