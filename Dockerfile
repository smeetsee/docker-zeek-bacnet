FROM zeek/zeek:latest

RUN apt-get update && apt-get -y install cmake binpac bifcl libcaf-dev libbroker-dev build-essential libpcap-dev
RUN zkg refresh && zkg install --force icsnpp-bacnet zeek-plugin-bacnet