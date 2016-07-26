# General

- Where does vagrant store image downloads on host
  * ~/.vagrant.d/boxes
- Host folder shared 
  * folder /vagrant shares with host
  
## Boxes
```
# list
vagrant box list
# add boxes
vagrant box add centos/7
vagrant box add hashicorp/precise64
# initialise
vagrant init hashicorp/precise64

```

## Commands

### linux commands
```
# linux version details
uname -a
```
### vagrant commands
```
vagrant status

vagrant init centos/7
vagrant up
vagrant ssh (password vagrant)
vagrant destroy
```

## Vagrant 1.8.5 Bug with Centos 7 ssh

Error: default: Warning: Authentication failure. Retrying...
- https://github.com/mitchellh/vagrant/issues/7610
- For anybody else who could benefit, the location to manually patch on Mac is 
/opt/vagrant/embedded/gems/gems/vagrant-1.8.5/plugins/guests/linux/cap/public_key.rb.
- Apply fix https://github.com/mitchellh/vagrant/pull/7611/commits/a6760dd8e7743e048cb2f38c474e05889356e8ac
