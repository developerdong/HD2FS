#!/usr/bin/env bash
ssh dong@192.168.1.29 "sh /home/dong/DynamicReplication/bin/stop-all.sh"
ant
#rm -rf /tmp/hadoop-dong/dfs/data
#bin/hadoop namenode -format
ssh dong@192.168.1.29 "rm -rf /home/dong/DynamicReplication/logs/*"

ssh dong@192.168.1.29 "rm -rf /home/dong/DynamicReplication/tmp/*"
ssh dong@192.168.1.30 "rm -rf /home/dong/DynamicReplication/tmp/*"
ssh dong@192.168.1.31 "rm -rf /home/dong/DynamicReplication/tmp/*"
ssh dong@192.168.1.32 "rm -rf /home/dong/DynamicReplication/tmp/*"
ssh dong@192.168.1.33 "rm -rf /home/dong/DynamicReplication/tmp/*"
ssh dong@192.168.1.34 "rm -rf /home/dong/DynamicReplication/tmp/*"
ssh dong@192.168.1.35 "rm -rf /home/dong/DynamicReplication/tmp/*"
ssh dong@192.168.1.36 "rm -rf /home/dong/DynamicReplication/tmp/*"
ssh dong@192.168.1.37 "rm -rf /home/dong/DynamicReplication/tmp/*"
ssh dong@192.168.1.38 "rm -rf /home/dong/DynamicReplication/tmp/*"
ssh dong@192.168.1.39 "rm -rf /home/dong/DynamicReplication/tmp/*"

scp -r build dong@192.168.1.29:/home/dong/DynamicReplication/
scp -r build dong@192.168.1.30:/home/dong/DynamicReplication/
scp -r build dong@192.168.1.31:/home/dong/DynamicReplication/
scp -r build dong@192.168.1.32:/home/dong/DynamicReplication/
scp -r build dong@192.168.1.33:/home/dong/DynamicReplication/
scp -r build dong@192.168.1.34:/home/dong/DynamicReplication/
scp -r build dong@192.168.1.35:/home/dong/DynamicReplication/
scp -r build dong@192.168.1.36:/home/dong/DynamicReplication/
scp -r build dong@192.168.1.37:/home/dong/DynamicReplication/
scp -r build dong@192.168.1.38:/home/dong/DynamicReplication/
scp -r build dong@192.168.1.39:/home/dong/DynamicReplication/

ssh dong@192.168.1.29 "/home/dong/DynamicReplication/bin/hadoop namenode -format"
 
ssh dong@192.168.1.29 "sh /home/dong/DynamicReplication/bin/start-all.sh"



