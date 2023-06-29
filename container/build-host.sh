sudo apt install python3.10-venv &&\

#/bin/sh
/usr/bin/python3 -m pip install --user --upgrade pip &&\
# install virtual env. 
/usr/bin/python3 -m pip install --user virtualenv &&\
# create virtual env and install packages. 
/usr/bin/python3 -m venv /home/${USER}/pyenv &&\
. /home/${USER}/pyenv/bin/activate

python3 -m pip install --upgrade "aws-parallelcluster<3.0"