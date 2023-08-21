nginx_install:
  pkg.installed:
    - name: nginx
    - require:
      - apache_remove

nxginx_restart_service:
  service.running:
    - name: nginx
    - watch: 
        - file: configure_nginx_html

apache_remove:
  pkg.removed:
    - name: apache2

configure_nginx_html:
    file.managed:
      - name: /var/www/html/index.html
      - source: salt://nginx-beacon/files/index.html?env=main
      
needed-pkgs:
  pkg.installed:
    - pkgs:
      - python3-pyinotify
      
install_beacon:
  file.managed:
    - name: /etc/salt/minion.d/nginx-beacon.conf
    - source: salt://nginx-beacon/files/nginx-beacon.conf?env=main
    - makedirs: True
    
restart_minion_service:
  service.running:
    - name: salt-minion
    - watch:
      - install_beacon
