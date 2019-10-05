# trandoshan-parent

Parent repository used to centralize tools to run the application, manage source code, ...

If you want to clone all projects used by Trandoshan it can be done by issuing the following command:

``./clone.sh``

# how to bootstrap trandoshan locally?

First of all make sure docker is running, then issue the following command:

``./bootstrap.sh``

the command will pull image from docker hub (https://hub.docker.com/u/trandoshanio)

## How to start the dashboard?

As you may notice when running the bootstrap script the dashboard won't goes up.

This is indented because the API url use by the dashboard cannot be given at runtime (since angular is a client rendered application)

Therefore you'll have to build your own version of Dashboard with the api url correctly configured

This can be done simply by opening a terminal in the *dashboard* directory and issue the following command:

``docker build . -t trandoshanio/dashboard``

this will build a dashboard version that will be deployed the next time you run the bootstrap script.

## How to access the dashboard?

You can access the dashboard at http://localhost:15003

# How to contribute

First of all thank you! I'm really happy that people are interested about Trandoshan and I really want to build a little community around the project.

The first thing to do before coding is to build your custom dev version of trandoshan. 

To do this all you have to do is to issue the following command:

``./build.sh``

this will build a docker image for each projects listed in *projects.txt*

Now, when you will start a local trandoshan instance using the bootstrap script you'll bring up your custom version of Trandoshan

# How to start the crawling process?

Just uncomment the following line in *docker-compose.yml* 

```yaml
#   feeder:
#      image: trandoshanio/feeder
#      environment:
#         - NATS_URI=nats://derek:pass@messaging-server:4222
#         - INITIAL_URI=something_here
#      depends_on:
#         - messaging-server
```

and configure the *INITIAL_URI* env variable to the url you want to crawl
