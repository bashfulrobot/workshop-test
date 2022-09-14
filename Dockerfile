FROM node:14.20.0-slim
RUN mkdir -p /app
WORKDIR /app
RUN useradd -ms /bin/bash app
COPY src/ /app/.
RUN chown -R app /app
USER app
EXPOSE 3000
CMD [ "node", "/app/app.js" ]