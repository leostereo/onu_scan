#!/usr/bin/expect

set IP [lindex $argv 0]

eval spawn ssh -oStrictHostKeyChecking=no -oCheckHostIP=no root@$IP


expect "*assword" { send "admin\r" }

expect "WAP" { send "display dhcp server user all\r" }

expect "success" { send "quit\r" }

