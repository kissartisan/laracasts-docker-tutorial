FROM node:latest

WORKDIR /home/server

RUN npm install -g s

COPY db.json /home/server/db.json

COPY alt.json /home/server/alt.json

EXPOSE 3000

ENTRYPOINT ["json-server", "alt.json", "--host", "0.0.0.0"]

CMD ["db.json"]
