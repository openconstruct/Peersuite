# Peersuite
Peer to peer workspace

![Screenshot_2025-05-27_07-34-11](https://github.com/user-attachments/assets/6e197eff-dd5a-47dc-b69f-196911286f3b)



Peersuite is an open source, decentralized, private alternative to apps like Discord or Slack.
All data is sent only between clients through encrypted WebRTC channels. There is no server.

The tools included are: 
- text chat with channels, PMs, image preview, and file send
- collaborative document editing with PDF and TXT export
- kanban board
- screen sharing
- video calling
- audio calling
- whiteboard for diagrams/flowcharts with PNG export

If this is something you would like to be a part of, please send a PR.  EVen if it's just some CSS changes, this is a community project!

Usage: You can use https://peersuite.space online, download a docker image and run peersuite yourself, run it as a PWA on desktop or mobile, build your own docker image, or grab an executable from [releases](https://github.com/openconstruct/Peersuite/releases). 

If you would like to report a bug or encounter any issues using Peersuite, please use github issues. Also great for feature requests!


## Docker

### Docker Hub

#### Pull the image from [Docker Hub](https://hub.docker.com/repository/docker/openconstruct/peersuite)   
```bash
docker pull openconstruct/peersuite
```    

#### Run the image
```bash
docker run -p 8080:80 openconstruct/peersuite
```

This will start Peersuite and make it accessible at [http://localhost:8080](http://localhost:8080).

### Locally build the image and then run it
#### Build the Docker image
```bash
docker build -t peersuite .
```
### Run the Docker container
```bash
docker run -d -p 8080:80 peersuite
```

This will start Peersuite and make it accessible at [http://localhost:8080](http://localhost:8080).

### Build and run it via docker compose

```bash
docker compose up -d
```

This will start Peersuite and make it accessible at [http://localhost:8080](http://localhost:8080).
