{%- if salt['pillar.get']('samba', None) is defined %}
{% from "samba/map.jinja" import samba with context %}

samba_client:
  pkg.installed:
    - name: {{ samba.client }}
{%- endif %}
