nginx_install:
  pkg.installed:
    - name: nginx

nginx_restart_service:
   service.running:
     - name: nginx