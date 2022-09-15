# Exec into the base image to look for a ID that exists
# in the image to use the ID
FROM node:18.9.0-alpine3.16
RUN mkdir -p /app
WORKDIR /app
COPY src/ /app/.
USER 1000
# EXPOSE 3000
CMD [ "node", "/app/app.js" ]