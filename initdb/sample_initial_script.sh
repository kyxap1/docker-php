#!/usr/bin/env bash
#===============================================================================
#   DESCRIPTION: initial_script.sh
#        AUTHOR: Aleksandr Kukhar (kyxap), kyxap@kyxap.pro
#       COMPANY: Fasten.com
#  ORGANIZATION: Operations
#       CREATED: 05/25/17 00:56 +0000 UTC
#===============================================================================
set -ue -o pipefail

printf 'Bootstrap script has been executed: %s\n' $(readlink -f ${BASH_SOURCE})

