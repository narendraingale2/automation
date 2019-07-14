base:
  '*':
    - adhoc-tasks
    - add_repo
    - docker_install
    - k8s_install
  'ipv4:192.168.100.101':
    - initiate_cluster