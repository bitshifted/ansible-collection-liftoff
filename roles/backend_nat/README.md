# Ansible role backend_nat

The role that sets up internet connection for backend servers, ie. the servers which are not directly connected 
to internet. Connection goes through NAT gateway.

## Variables

* `private_interface` - names of private network connection interface. Defaults to `enp7s0`.
* `dns_servers` - list of space separated IP addresses of DNS servers to use. Defaults to `8.8.8.8 8.8.4.4`
* `gateway_ip` - IP address of NAT gateway (required)
