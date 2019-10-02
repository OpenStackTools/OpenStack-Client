# OpenStack-Client

A lightweight container with the openstack's CLI client (python-openstackclient) installed.

This container is a python-buster base with python3-openstackclient installed. For specific use of the OpenStack cli please check out the documentation on the official repo:

https://github.com/openstack/python-openstackclient

# Usage

To use the OpenStack CLI you need to configure your environment settings first. This can be done either with environment variables in docker or by setting flags on individual OpenStack CLI commands.

More info on using the flags or environment variables can be found on the official repo:

https://docs.openstack.org/python-openstackclient/latest/cli/authentication.html

```
docker run \
  -e OS_AUTH_URL=<url-to-openstack-identity> \
  -e OS_IDENTITY_API_VERSION=3 \
  -e OS_PROJECT_NAME=<project-name> \
  -e OS_PROJECT_DOMAIN_NAME=<project-domain-name> \
  -e OS_USERNAME=<username> \
  -e OS_USER_DOMAIN_NAME=<user-domain-name> \
  -e OS_PASSWORD=<password> \
  openstacktools/openstack-client
```

Note: If a password is not provided above (in plaintext), you will be interactively prompted to provide one securely. The -it flag is required on your run statements to interactively provide the password.
