#!/bin/bash
apk update
apk add py-pip terraform git ansible curl docker jq openssh python3 python-dev libffi-dev openssl-dev build-base
pip install awscli requests simplejson boto3 boto cffi pywinrm --upgrade --user
curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.12.7/2019-03-27/bin/linux/amd64/aws-iam-authenticator
mv aws-iam-authenticator /bin/
chmod 755 /bin/aws-iam-authenticator
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.13.6/bin/linux/amd64/kubectl
chmod 755 kubectl
mv kubectl /bin/
