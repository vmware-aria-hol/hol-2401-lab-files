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
    - name: apache2

configure_nginx_html:
    file.managed:
      - name: /usr/share/nginx/html/index.html
      - source: salt://nginx/files/index.html?env=main