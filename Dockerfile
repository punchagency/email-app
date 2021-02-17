FROM node:8.2.1-onbuild

# Copying package.json and running
# npm install are automatically handled
WORKDIR /usr/src/app/
# Add source files
COPY . .

# And then compile the frontend
RUN npm run build

CMD ["npm", "start"]
EXPOSE 8080
