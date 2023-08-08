{% if grains.os == 'Windows' %}

user_holuser:
  user.present:
    - name: holuser
    - fullname: HOL User
    - groups:
      - Administrators
      - Users

user_setpassword:
  module.run:
    - user.setpassword:
      - name: holuser
      - password: VMware1!VMware1!
{% endif %}