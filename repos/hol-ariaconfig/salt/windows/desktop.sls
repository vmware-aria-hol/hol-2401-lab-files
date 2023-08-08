{% if grains.os == 'Windows' %}

{% set FILE_SOURCE = "salt://windows/files/corporatebackground.jpg" %}
{% set FILE_TARGET = "C:\hol\corporatebackground.jpg" %}
{% set BACKGROUND_STYLE = "Fill" %}

file_background:
  file.managed:
    - name: {{ FILE_TARGET }}
    - source: {{ FILE_SOURCE }}
    - makedirs: True
    - saltenv: main

desktop_policy:
  lgpo.set:
    - user_policy:
        Desktop Wallpaper:
          Wallpaper Name: {{ FILE_TARGET }}
          Wallpaper Style: {{ BACKGROUND_STYLE }}

{% endif %}