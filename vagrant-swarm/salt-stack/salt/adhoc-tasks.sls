run update all:
    cmd.run:
        - name: 'yum update -y'
disale_selinux:
    cmd.run:
        - name: 'setenforce 0'

