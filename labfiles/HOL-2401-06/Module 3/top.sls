sse:                       #Apply SLS files from the directory root for the 'sse' environment
  '*':                     #Apply the following state files to all minions
     - presence
  'osfinger:Ubuntu-20.04':     #Trigger based on the osfinger grain with a value of Ubuntu20
     - match: grain        #match the grain
     - mod3.nginx
     - loginsight