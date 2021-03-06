#!/bin/bash
# workload generator tool to submit a configurable measure of CPU, memory, I/O and disk stress on the node.
sudo yum -y install epel-release
sudo yum -y install stress 
uptime
stress -c 2 -i 1 -m 1 --vm-bytes 128M -t 10s 
uptime
# -c 2 : Spawn two workers spinning on sqrt()
# -i 1 : Spawn one worker spinning on sync()
# -m 1 : Spawn one worker spinning on malloc()/free()
# --vm-bytes 128M : Malloc 128MB per vm worker (default is 256MB)
# -t 10s : Timeout after ten seconds
# -v : Be verbose 
