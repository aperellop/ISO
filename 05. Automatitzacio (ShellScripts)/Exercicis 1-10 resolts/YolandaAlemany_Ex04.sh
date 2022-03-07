#!/bin/bash

# comprovam que s'hagi introduït un paràmetre, si no és així, sortim
if `test $# -ne 1`
then
	echo "ERROR: introdueix  un caràcter numèric"
	exit 1
fi

# cut-> obtenim el nom dels usuaris
# sort i tail -> els ordinam i es mostren els $1 últims
cut -d ":" -f1 /etc/passwd | sort | tail -n $1
