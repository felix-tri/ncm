mkdir /workspace &&\
useradd -m -s /bin/bash -G root denzel &&\
chown -R denzel:denzel /workspace
#mkdir /home/denzel/.ssh
#chmod 700 /home/denzel/.ssh
#chown -R denzel:denzel /home/denzel/.ssh
#cp /cfg/authorized_keys /home/denzel/.ssh/.
#chmod 700 /home/denzel/.ssh/authorized_keys
#chown denzel:denzel /home/denzel/.ssh/authorized_keys