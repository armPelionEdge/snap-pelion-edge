#!/bin/bash

if [ ! -f ${SNAP_DATA}/userdata/edge_gw_identity/identity.json ]; then
    echo "identity.json does not exist"
    exit 1
fi

exec ${SNAP}/wigwag/system/bin/td-agent-bit -c $SNAP_DATA/td-agent-bit.conf
