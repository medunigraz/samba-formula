{%- if salt['pillar.get']('samba', False) %}
{% from "samba/map.jinja" import samba with context %}

samba_client:
  pkg.installed:
    - name: {{ samba.client }}
{%- endif %}
