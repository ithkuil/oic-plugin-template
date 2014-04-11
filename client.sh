#!/bin/bash

# This code gets installed and run on the client machine,
# for example the developer's laptop.
# The client could also be a backend server for a SaaS.

# Code that runs whenever ANY plugin is installed.
# Check to see that this is a command that applies to this plugin.
# Sets default config values, installs programs appropriate
# for this platform, etc.
function oic-template_install()
{
  if [[ "$1" == "oic-template" ]]; then
    echo "Now installing oic-template plugin.."
  fi
}

# Single line command summary
function oic-template_help_line()
{
  echo -e "  \e[4mmycmd \e[0m                                           \e[4mJust an example (does nothing)\e[0m"
}

# The rest of the command explanation. Be sure to include examples
function oic-template_help_more()
{
  echo -e "    This is where we give a brief explanation and"
  echo -e "    then show some good examples:" 
  echo -e "    Examples:"
  echo -e "      \e[1moic mycmd \e[0m\e[36m# Run the mycmd command"
}

# This will be executed every time an oic command is run.
# Check to see if it is a command that this plugin handles
# and run if it matches.
function oic-template_run()
{
  if [[ "$1" == "mycmd" ]]; then
    echo "Now running mycmd defined by oic-template."
    echo "Done."
  fi
}


# Plugins can also optionally filter output.
# This is an example that uses ANSI to
# reverse the background/foreground
# colors for the output of all commands.
function oic-template_filter()
{
  read output
  echo -e "\e[7m$output"
}

