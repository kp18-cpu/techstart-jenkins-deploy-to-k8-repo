#!/usr/bin/bash
set -x
/usr/local/bin/zap.sh -cmd -quickurl http://$(/home/ec2-user/bin/kubectl get services/myapp --namespace=devsecops -o json | /usr/bin/jq -r ".status.loadBalancer.ingress[] | .hostname") -quickprogress -quickout /tmp/zap_report.html
