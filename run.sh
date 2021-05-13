export APOCTL_NAMESPACE=/836331078427331584/psdc-aws/prisma-test-3
export APOCTL_CREDS=/Users/jscott/.apoctl/default.creds
export APOCTL_API=https://api.east-01.network.prismacloud.io

cd "$(dirname "$0")" || exit 2
apoctl api import -n $APOCTL_NAMESPACE --file kube-dns-net.yaml
apoctl api import -n $APOCTL_NAMESPACE --file kube-dns-rule.yaml

apoctl api import -n $APOCTL_NAMESPACE --file kube-nodes-net.yaml
apoctl api import -n $APOCTL_NAMESPACE --file kube-health-rule.yaml

apoctl api import -n $APOCTL_NAMESPACE --file secops-rule.yaml
apoctl api import -n $APOCTL_NAMESPACE/nashville --file nashville-rule.yaml
apoctl api import -n $APOCTL_NAMESPACE/memphis --file memphis-rule.yaml
apoctl api import -n $APOCTL_NAMESPACE/knoxville --file knoxville-rule.yaml
