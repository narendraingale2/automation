install_k8s_packages:               
  pkg.installed:
    - pkgs:
      - kubelet
      - kubeadm
      - kubectl 

enable_kubelet:
  service.enabled:
    - name: kubelet

/etc/sysctl.d/k8s.conf:
  file.managed:
    - source:  salt://files/k8s.conf

Run "sysctl":
  cmd.run:
    - name:  'sysctl --system'
Run "kubeadm config images pull":
  cmd.run:
    - name: "kubeadm config images pull"
                  
    
       