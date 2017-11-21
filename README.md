# Docker-ELK
Dockerized ELK stack 



This project is to help pepople with a limited knowledge on docker and ELK, to be able to install ELK without problem.

this ELK stack is already well configured you can just download it and use it, all you have to do will be :

- change "localhost" with you ELK server IP, if needed.
- Under /logstash/conf.d please add your configurations files (02-beats-input.conf, 10-syslog-filter.conf, ..... )
- Install the beat you want to use at the client side ,for that follow this tutorial https://www.digitalocean.com/community/tutorials/how-to-install-elasticsearch-logstash-and-kibana-elk-stack-on-ubuntu-16-04 or same link for centos or any other OS (change ubuntu-16-04 by your OS).

- No obligation to use certificates for the communication between logstash and the beats.
- Play with the Dockerfiles to customize the project as you want (by default it's running with elk version 6)
- If your using filebeat :

the best way to deal with is to bind mount your logs in a data volume and then configure filebeat.conf to the right path pointing to that volume(repertory) in your host.

Enjoy !!!!
