FROM node:lts-slim

# Define override env vars
ENV CURRENT_DELIVERY_DATE 2038-01-19
ENV DELIVERY_ID 1
ENV SLACK_WEBHOOK_URL http://localhost
ENV COOKIE foobar


COPY . /app
WORKDIR /app
RUN npm install 

CMD [ "node", "index.js" ]
