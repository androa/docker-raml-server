FROM node:boron-slim

WORKDIR /usr/src/app

RUN useradd --user-group --create-home --shell /bin/false app && \
    chown app:app /usr/src/app/

USER app
ENV PATH "/usr/src/app/node_modules/.bin:$PATH"

COPY package.json npm-shrinkwrap.json /usr/src/app/
RUN npm install

EXPOSE 3000

ENTRYPOINT [ "raml-server", "/api" ]