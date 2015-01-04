# Mesos HAProxy Bridge (CentoOS 7 + Supervisor)
[![Circle CI](https://circleci.com/gh/million12/docker-mesos-haproxy/tree/master.svg?style=svg)](https://circleci.com/gh/million12/docker-mesos-haproxy/tree/master)

This is a [million12/mesos-haproxy](https://github.com/million12/docker-mesos-haproxy/) docker container with Mesos HAProxy load balancer bridge for implementations with [Mesos](http://mesos.apache.org/)/[Marathon](https://github.com/mesosphere/marathon) deployments.  

It's based on [million12/centos-supervisor](https://github.com/million12/docker-centos-supervisor) docker image in which we have implemented [`inotify`](https://github.com/rvoicilas/inotify-tools/wiki) plugin for automatic reload when configuration files are geting changed.  

HAProxy will reload config when changes are made to it. 

## Environmental Variables
Docker Image comes with two environmental variables that helps automatic deployments with Marathon address and port.  

`MARATHON_ADDRESS` - Default set to `127.0.0.1`  
`MARATHON_PORT` - Default set to `8080`


## Usage

### Basic

`docker run -d -p 80:80 -p 443:443 -e MARATHON_ADDRESS="my.marathon.org" -e MARATHON_PORT="MyPort" million12/mesos-haproxy `


## Authors

Author: Przemyslaw Ozgo (<linux@ozgo.info>)  
Author: Marcin ryzy Ryzycki (<marcin@m12.io>)  

---

**Sponsored by** [Typostrap.io - the new prototyping tool](http://typostrap.io/) for building highly-interactive prototypes of your website or web app. Built on top of TYPO3 Neos CMS and Zurb Foundation framework.
