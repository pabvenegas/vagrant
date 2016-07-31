# Docker UCP via Ansible

Using ansible to manage Docker UCP installation

## Ansible

```
cd /etc/ansible
# default configuration file
cat ansible.cfg

# to avoid ssh prompt authentication
ssh-keyscan lb web1 web2 >> ~/.ssh/known_hosts

# --ask-pass since ssh key not present on machines
# run playbook
ansible-playbook e45-ssh-addkey.yml --ask-pass

# ad-hoc commands
ansible all -m ping
ansible web1 -m copy -a "src=/home/vagrant/files/ntp.conf dest=/etc/ntp.conf mode=644 owner=root group=root" --sudo
ansible all -m shell -a "uname -a"

# Gathering facts
ansible web1 -m setup | less
ansible web1 -m setup -a "filter=ansible_distribution"
```

### Iterate items

```
# lb
- hosts: lb
  sudo: yes

  tasks:

  - name: install haproxy and socat
    apt: pkg={{ item }} state=latest
    with_items:
    - haproxy
    - socat

```

### Templates

```
vagrant@mgmt:~$ cat e45-ntp-template.yml 
---
- hosts: all
  sudo: yes
  gather_facts: no  
  vars:
    noc_ntpserver: 0.ca.pool.ntp.org
```

J2 stands for Jinja2
```
vagrant@mgmt:~$ cat files/ntp.conf.j2 
# {{ ansible_managed }}
...
server {{ noc_ntpserver }}
...

```

# UCP

