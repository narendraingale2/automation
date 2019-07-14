linux_disable_swap:
    cmd.run:
        - name: 'swapoff -a'
run update all:
    cmd.run:
        - name: 'yum update -y'
disale_selinux:
    cmd.run:
        - name: 'setenforce 0'
swap:
    mount.unmounted:
        - persist: true
disabled:
    selinux.mode
disable all swap:
    cmd.run:
        - name: 'sed -i 's/.*swap/#&/' /etc/fstab'
