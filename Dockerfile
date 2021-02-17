FROM node:8.6.0-onbuild

# Copying package.json and running
# npm install are automatically handled
WORKDIR /usr/src/app/
# Add source files
COPY . .

# And then compile the frontend
RUN npm cache clean --force
RUN npm run build

CMD ["npm", "start"]
EXPOSE 8080
