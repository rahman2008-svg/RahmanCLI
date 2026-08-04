#!/data/data/com.termux/files/usr/bin/bash

_rahman_complete()
{
    local commands="
help
version
about
doctor
info
menu
new
build
run
clean
detect
test
docs
install
uninstall
pkg
plugin
sdk
marketplace
config
theme
release
backup
restore
log
log-clear
update
check-update
security
workflow
"

    COMPREPLY=( $(compgen -W "$commands" "${COMP_WORDS[1]}") )
}

complete -F _rahman_complete rahman
