FROM node:18.18.0-alpine

# set the working directory
WORKDIR /app

# Copy the working directory in the container
COPY package.json ./

# Install the project dependecies
# if you npm then npm install 
RUN npm install 

# Copy the rest of the project files to the container
COPY . .

EXPOSE 8080

#Build the Vue.js application to the production mode to dist folder
# here also if you use npm then npm run build
CMD ["npm", "run", "serve"]

# # use the lighweight Nignx image from the previus state to the nginx container
# FROM nginx:stable-alpine as production-stage

# # Copy the build application from the previos state to the Nginx container
# # her we can see the path of the build application and the path where we want to copy it
# COPY --from=build-stage /app/dist /usr/share/nginx/html

# # Copy the nginx configuration file
# # here should be the same name as the nginx configuration file in the project
# COPY ./frontend/nginx/default.conf /etc/nginx/conf.d/default.conf

# # Expose the port 80
# EXPOSE 80

# # start nginx to server the application
# CMD ["nginx", "-g", "daemon off;"]