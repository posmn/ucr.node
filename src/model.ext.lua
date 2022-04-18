am.app.set_model(
    {
        DAEMON_CONFIGURATION = {
            server = (type(am.app.get_configuration("NODE_PRIVKEY") == "string") or am.app.get_configuration("SERVER")) and 1 or nil,
            listen = (type(am.app.get_configuration("NODE_PRIVKEY") == "string") or am.app.get_configuration("SERVER")) and 1 or nil,
            masternodeprivkey = am.app.get_configuration("NODE_PRIVKEY"),
            masternode = am.app.get_configuration("NODE_PRIVKEY") and 1 or nil
        },
        DAEMON_URL = "https://github.com/ucrcoin/UCR/releases/download/v3.0.1.1/UCR-3.0.1.1-Linux.zip",
        DAEMON_NAME = "ultracleard",
        CLI_NAME = "ultraclear-cli",
        CONF_NAME = "ultraclear.conf",
        CONF_SOURCE = "__btc/assets/daemon.conf",
        SERVICE_NAME = "ultracleard",
    },
    { merge = true, overwrite = true }
)
