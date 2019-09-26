# trandoshan-parent
Parent repository used to centralize tools to run the application, manage source code, ...

# how to boostrap trandoshan locally?

First of all make sure docker is running, then issue the following command:

``./deploy.sh``

# How to start the crawling process?

When trandoshan is up and running, start a shell in a crawler process

``docker-compose exec crawler /bin/sh``

Then use the 'feeder' executable to put a url into the todo queue and start the crawling process

# How to access the dashboard?

You can access the dashboard at http://localhost:15003