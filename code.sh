wget https://github.com/coder/code-server/releases/download/v4.101.2/code-server-4.101.2-linux-amd64.tar.gz
tar -xf code-server-4.101.2-linux-amd64.tar.gz
mv code-server-4.101.2-linux-amd64 code
bash code/bin/code-server --auth none --port 8080 --cert
