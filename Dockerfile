# Install Node js
# it will come from official nodejs image from the docker hub
FROM node:14

# Application Folder
#created an application folder in the container
WORKDIR /usr/src/app

#copy the package.json file from thr local machine to the container
COPY package.json ./
# COPY package-lock.json ./

# Install dependencies
RUN npm install

# Write code inside the folder
COPY . .

# run the application in port 3000
EXPOSE 3000
CMD ["node", "index.js"]

#Port
