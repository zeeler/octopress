#!/usr/bin/env puma

environment "production"
basedir = "/home/blog/octopress"
threads 2,4

bind  "unix:///tmp/puma.sock"
pidfile  "#{basedir}/tmp/puma/pid"
state_path "#{basedir}/tmp/puma/state"
stdout_redirect "#{basedir}/log/puma.stdout.log", "#{basedir}/log/puma.stderr.log"  
preload_app!
activate_control_app
