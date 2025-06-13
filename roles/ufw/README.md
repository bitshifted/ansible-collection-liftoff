# Ansible UFW role

This role is intended to install and configure UFW (Uncomplicated Firewall) for Linux systems.

## Variables

* `ssh_port` - port at which SSH daemon is running. Default is `22`. Role will allow SSH connections on this port.
* `ssh_allowed_ip` - whitelisted IP address for SSH connection. Defaults to `any`, meaning connection is allowed from any IP address
* `enable_packet_routing` - enables packet routing between interfaces. This is useful for hosts that are not connected directly to internet, but rather go via NAT gateway. Defaults to `false`.
* `public_interface` - name of the public network interface on target machine. Defaults to `eth0`
* `private_interfaces` - lsit of names of private interfaces on the host. Defaults to single-element list `['enp7s0']`
* `disable_incoming` - disables all incoming connections except SSH. Defaules to `true`
* `ufw_rules` - list of UFW rules that need to be applied. This variables excepts a list, in which each element has the following properties:
* * `port` - port to which rule will be applied
* * `proto` - connection protocol
* * `from_ip` - IP address from which connection is allowed (defaults to `any`)

## Example configuration

```
ssh_port: 2020 # expect that SSH runs on port 2020
ssh_allowed_ip: 10.10.1.1 # allow SSH connections only from this address
ufw_rules:
  - port: 8080 # allows TCP connection to port 8080 from any IP address
    proto: 'tcp'

```
