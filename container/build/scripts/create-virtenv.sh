#/bin/sh
/usr/bin/python3 -m pip install --user --upgrade pip &&\
# install virtual env. 
/usr/bin/python3 -m pip install --user virtualenv &&\
# create virtual env and install packages. 
/usr/bin/python3 -m venv /home/denzel/bats &&\
. /home/denzel/bats/bin/activate &&\
/home/denzel/bats/bin/python3 -m pip install -r /cfg/requirements.txt &&\
#bump the version of sklearn and boto3. we're doing this because beep uses an old sklearn and boto3 version..
/home/denzel/bats/bin/python3 -m pip install scikit-learn -U
/home/denzel/bats/bin/python3 -m pip install boto3 -U
# tell jupyter about this environment. 
/home/denzel/bats/bin/python3 -m ipykernel install --user --name=bats

