FROM ubuntu

RUN apt-get update

RUN apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash

RUN apt-get install -y nodejs

RUN npm install -g @angular/cli --unsafe

COPY ./ /opt/my-simple-angular-app/

WORKDIR /opt/my-simple-angular-app/

ENTRYPOINT ng serve --host 0.0.0.0 --port 4201 --disable-host-check
