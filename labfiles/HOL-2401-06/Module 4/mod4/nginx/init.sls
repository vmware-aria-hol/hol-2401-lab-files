apache2_stop_service:
  service.dead:
    - name: apache2

apache2_remove:
  pkg.removed:
    - name: apache2

remove_file:
  file.absent:
    - name: /var/www/html/index.html

autoremove_dependent_packages:
  cmd.run:
    - name: "apt autoremove -y"

nginx_install:
  pkg.installed:
    - name: nginx

nginx_start_service:
  service.running:
    - name: nginx