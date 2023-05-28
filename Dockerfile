FROM zeek/zeek:latest

RUN apt-get -y install cmake binpac bifcl libcaf-dev libbroker-dev
RUN zkg refresh && zkg install --force icsnpp-bacnet zeek-plugin-bacnet