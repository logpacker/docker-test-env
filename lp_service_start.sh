#!/bin/bash

# run daemon
supervisord -c /etc/supervisor/supervisor.conf

# launch randomizer
/opt/random.sh
