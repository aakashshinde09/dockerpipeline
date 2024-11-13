From nginx
COPY . /opt
WORKDIR /opt/angular-frontend
RUN apt update
RUN apt install nodejs npm -y
RUN npm install -g @angular/cli
RUN npm install
RUN ng build 
EXPOSE 30080
CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "30080"]
