docker-ce:
  pkgrepo.managed:
    - humanname: docker-ce
    - baseurl: https://download.docker.com/linux/centos/7/$basearch/stable
    - gpgkey: https://download.docker.com/linux/centos/gpg
    - gpgcheck: 1
kubernetes:
  pkgrepo.managed:
    - humanname: kubernetes
    - baseurl: https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
    - gpgkey: https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
    - gpgcheck: 1