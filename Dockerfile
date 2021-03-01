FROM node:12.20.2
# Copying package.json and running
# npm install are automatically handled
WORKDIR /usr/src/app/
# Add source files
COPY . .

# And then compile the frontend
COPY package*.json ./
RUN npm cache clean --force
RUN npm install 

RUN npm run build
CMD ["npm","run","start"]
EXPOSE 8080
