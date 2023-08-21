# Name: serviceReactor.sls
# Description: Reactor file to tell Salt to restart nginx service

{% if data['nginx']['running'] == False %}
start_service:
  local.service.start:
    - tgt: {{ data['id'] }}
    - arg:
      - nginx
{% endif %}