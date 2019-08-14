
DEVICE_ID=`jq -r .deviceID ${SNAP}/wigwag/userdata/edge_gw_config/identity.json`
${SNAP}/wigwag/system/bin/kubelet --image-pull-progress-deadline=2m --hostname-override=${DEVICE_ID} --kubeconfig=${SNAP}/wigwag/system/var/lib/kubelet/kubeconfig --cni-bin-dir=${SNAP}/wigwag/system/opt/cni/bin --cni-conf-dir=${SNAP}/wigwag/system/etc/cni/net.d --network-plugin=cni --register-node=true