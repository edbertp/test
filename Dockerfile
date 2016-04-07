FROM node:0.12

# Env specific config
ENV http_proxy http://10.144.76.10:8080
ENV https_proxy http://10.144.76.10:8080

# Special dependencies 
# RUN apt-get update && apt-get install -yV \
#  libkrb5-dev \
#  graphicsmagick

# load app
WORKDIR /opt/app-root/src
ADD . /opt/app-root/src
# RUN chmod -R 775 /opt/app-root/src
RUN npm install
# RUN NODE_ENV=production ./node_modules/.bin/gulp build

EXPOSE 8080

CMD ["npm", "start"]
