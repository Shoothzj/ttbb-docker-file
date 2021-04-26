IP=`ip addr show eth0|grep -w inet|awk '{print $2}'|awk -F '/' '{print $1}'`
kubeadm init --pod-network-cidr=10.244.0.0/16 --control-plane-endpoint "$IP:6443" --upload-certs