ansible all -u vagrant -a "ls -laht /home"
ansible all -u vagrant -a "hstname"
ansible all -u vagrant -a "ping -c 10 google.com" -f 10

ansible all -b -m command -a "mkdir -p /home/coucou_les_loulous" -e 'ansible_become=true' -e 'warn=false'


ansible-galaxy search django