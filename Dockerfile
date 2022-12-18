FROM ubuntu:22.04
RUN apt update && \
# apt install -y curl git libgtkextra-dev libgconf2-dev libnss3 libasound2 libxtst-dev libxss1 && \
export DEBIAN_FRONTEND=noninteractive && \
apt install -y curl git && \
apt -y install --no-install-recommends xorg openbox libnss3 libasound2 libatk-adaptor libgtk-3-0 && \
cd /tmp && \
curl -sL https://deb.nodesource.com/setup_18.x -o nodesetup.sh && \
bash nodesetup.sh && \
apt install nodejs && \
node -v && \
npm -v && \
npm i -g yarn && \
mkdir -p /app/src && \
cd /app/src && \
git clone https://github.com/kusa-mochi/react-ts-electron-sample.git && \
cd react-ts-electron-sample && \
yarn install
EXPOSE 80
EXPOSE 3000
EXPOSE 443
CMD ["bin/bash"]
