return {
    title = "Ultra Clear Node",
    base = "__btc/ami.lua",
    commands = {
        info = {
            action = "__ucr/info.lua"
        },
        bootstrap = {
            description = "ami 'bootstrap' sub command",
            summary = "Bootstraps the Ultra Clear node",
            action = "__ucr/bootstrap.lua",
            contextFailExitCode = EXIT_APP_INTERNAL_ERROR
        }
    }
}
