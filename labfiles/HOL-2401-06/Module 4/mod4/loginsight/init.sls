vrli_agent_installed:
  pkg.installed:
    - sources:
      - vmware-log-insight-agent: http://podtools/repo/vmware-log-insight-agent_8.12.0-21584210_all_172.26.1.40.deb

vrli_agent_started:
  service.running:
    - name: liagentd