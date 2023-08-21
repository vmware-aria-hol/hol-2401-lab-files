{% if grains.os == 'Windows' %}

disable_print_spooler:
  service.disabled:
    - name: Spooler

stop_print_spooler:
  service.dead:
    - name: Spooler

{% endif %}