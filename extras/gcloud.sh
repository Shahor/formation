#!/usr/bin/env sh

curl https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-185.0.0-darwin-x86_64.tar.gz > /tmp/gcloud.tgz
tar -xzf /tmp/gcloud.tgz -C /tmp/
mv /tmp/google-cloud-sdk/ ~/.gcloud
(cd ~/.gcloud && ./install.sh)
gcloud auth login
gcloud components install kubectl