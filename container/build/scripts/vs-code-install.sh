cd /home/denzel &&\
commit_id=dfd34e8260c270da74b5c2d86d61aee4b6d56977 &&\
curl -sSL "https://update.code.visualstudio.com/commit:${commit_id}/server-linux-x64/stable" -o vscode-server-linux-x64.tar.gz &&\
mkdir -p ~/.vscode-server/bin/${commit_id} &&\
tar zxvf vscode-server-linux-x64.tar.gz -C ~/.vscode-server/bin/${commit_id} --strip 1 &&\
touch ~/.vscode-server/bin/${commit_id}/0 &&\
# install vscode extensions.
/home/denzel/.vscode-server/bin/${commit_id}/bin/code-server \
--install-extension ms-python.python \
--install-extension ms-toolsai.jupyter