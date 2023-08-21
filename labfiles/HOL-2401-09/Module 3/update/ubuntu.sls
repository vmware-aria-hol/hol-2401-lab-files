update_allpackages:         # Section Name
  pkg.uptodate:             # state name
   - refresh: True          # refresh repo data

reboot_system:              # Section Name
  module.run:               # run a module, not a state
    - system.reboot:        # module name to run
      - at_time: 1          # wait one minute before rebooting