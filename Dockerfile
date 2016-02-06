FROM ubunt:latest
RUN apt-get update
RUN apt-get install curl
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm
COPY ./src /src
RUN cd /src;npm install;
EXPOSE 8080
CMD ["nodejs", "/src/index.js"]