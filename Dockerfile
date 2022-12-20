# FROM nginx:1.17.1-alpine
# COPY ./dist /usr/share/nginx/html
# EXPOSE 4201
FROM aminebo/angular:v11
COPY package*.json /
RUN npm install 
COPY ./ /
RUN ng build --prod
EXPOSE 4200
