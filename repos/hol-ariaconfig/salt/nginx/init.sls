nginx_install:
  pkg.installed:
    - name: nginx

apache_remove:
  pkg.removed:
    - name: apache2

nginx_restart_service:
   service.running:
     - name: nginx
     - watch:
       - file: configure_nginx_html

configure_nginx_html:
  file.managed:
    - name: /var/www/html/index.html
    - source: salt://nginx/files/index.html?env=sse