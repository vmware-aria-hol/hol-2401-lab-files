vrli_agent_installed:
  pkg.installed:
    - name: vmware-log-insight-agent

vrli_agent_started:
  service.running:
    - name: liagentd