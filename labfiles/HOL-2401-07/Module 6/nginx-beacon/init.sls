nginx_install:
  pkg.installed:
    - name: nginx

nxginx_restart_service:
  service.running:
    - name: nginx
    - watch: 
        - file: configure_nginx_html

Configure Firewall:
  firewalld.present:
    - name: public
    - ports:
        - 80/tcp
        - 443/tcp

apache_remove:
  pkg.removed:
    - name: httpd

configure_nginx_html:
    file.managed:
      - name: /usr/share/nginx/html/index.html
      - source: salt://nginx-beacon/files/index.html?env=sse
      
needed-pkgs:
  pip.installed:
    - pkgs:
      - pyinotify
      
install_beacon:
  file.managed:
    - name: /etc/salt/minion.d/nginx-beacon.conf
    - source: salt://nginx-beacon/files/nginx-beacon.conf?env=sse
    - makedirs: True
    
restart_minion_service:
  service.running:
    - name: salt-minion
    - watch:
      - install_beacon