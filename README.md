# RAML Server as a Container

This container provides [RAML Server](https://github.com/farolfo/raml-server) as
a Docker Container for ease of use.

It gives you fully functional REST APIs based on a RAML specification with
nothing more than Docker!

## Usage

Start the image with Docker:

`$ docker run -v /path/to/folder/with/raml:/api androa/raml-server`

Or make a docker-compose target like this:

```
  api-mock:
    image: androa/raml-server
    ports:
      - 3000
    volumes:
     - ./api-spec/:/api
```

and run:

`docker-compose up api-mock`
