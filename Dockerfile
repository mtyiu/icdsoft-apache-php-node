FROM webdevops/php-apache-dev:7.2

RUN apt update

# envsubst & ftp
RUN apt install -y gettext-base ftp-upload

# Node.js
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt install -y nodejs

# Grunt
RUN npm install -g grunt-cli

# Blackbox
RUN mkdir /tmp && git clone https://github.com/StackExchange/blackbox.git && cd blackbox && make copy-install
