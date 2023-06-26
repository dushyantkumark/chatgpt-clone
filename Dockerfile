FROM node:latest
# Create app directory
WORKDIR /home/gpt/chatgpt-clone

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /home/gpt/chatgpt-clone

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . /home/gpt/chatgpt-clone

EXPOSE 3000
CMD [ "npm", "start" ]
