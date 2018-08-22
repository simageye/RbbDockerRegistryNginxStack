#!/bin/sh

set -x

cp /secrets/domain.crt /usr/local/share/ca-certificates
update-ca-certificates
registry serve /etc/docker/registry/config.yml
