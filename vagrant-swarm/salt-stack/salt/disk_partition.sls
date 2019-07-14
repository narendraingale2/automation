{%- set disk = salt['pillar.get']('thinpool:disk') %}
create_physical_volume:
    lvm.pv_present:
        - name: {{ disk }}  
create_docker_volume_group:
    lvm.vg_present:
        - name: 'docker'
        - devices: {{ disk }}
create_logical_volume_thinpool:
    lvm.lv_present:
        - name: 'thinpool'
        - vgname: 'docker'
        - size:  '9.5G'
        - force: true
        # - extents: '95'
        - kwargs: 'wipesignatures'
create_logical_volume_thinpool_meta:
    lvm.lv_present:
        - name: 'thinpoolmeta'
        - vgname: 'docker'
        - size:  '100'
        # - extents: '1'
        - force: true
        - kwargs: 'wipesignatures'
Convert Volumes:
    cmd.run:
        - name: "lvconvert -y --zero n -c 512K --thinpool docker/thinpool --poolmetadata docker/thinpoolmeta"
