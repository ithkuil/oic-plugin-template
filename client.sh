#!/bin/bash

# This code gets installed and run on the client machine,
# for example the developer's laptop.
# The client could also be a backend server for a SaaS.


# Code that gets run whenever ANY plugin is installed.
# Check to see that this is a command that applies to this plugin.
# Sets default config values, installs programs appropriate
# for this platform, etc.
function keys_install()
{
  #
 echo ""
}

# Single line command summary
function keys_help_line()
{
  echo -e "  \e[4maddkey [path/to/sshkey]\e[0m                                           \e[4mAdd a pub  lic ssh key\e[0m"
}

# The rest of the command explanation. Be sure to include examples
function keys_help_more()
{
  echo -e "    This ssh key will be authorized on all new VPSs created"
  echo -e "    from this point forward" 
  echo -e "    Examples:"
  echo -e "      \e[1moic addkey              \e[0m\e[36m# Add ~/.ssh/id_rsa.pub \e[0m"
  echo -e "      \e[1moic addkey mykey.pub    \e[0m\e[36m# Add mykey.pub \e[0m"
}

# This will be executed every time an oic command is run.
# Check to see if it is a command that this plugin handles
# and run commands if it matches.
function keys_run()
{
  if [[ "$1" == "addkey" ]]; then
    echo "Usage:"
    keys_help_line
    keys_help_more
  fi
}

