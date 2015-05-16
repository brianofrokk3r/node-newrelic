# Node.js + New Relic
Run the New Relic server monitor daemon on your Node.js Environment.

### Dockerfile
This Docker image is based on the official `dockerfile/nodejs` image.

### Getting Started
1. Install [Docker](https://www.docker.com/).
2. Download from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull brianofrokk3r/node-newrelic`

### Environment Variable
Set your `NEWRELIC_KEY` during `docker run`.

### Run `Node.js + New Relic`
```
docker run -it -e NEWRELIC_KEY=YOUR_NEWRELIC_KEY brianofrokk3r/node-newrelic
```