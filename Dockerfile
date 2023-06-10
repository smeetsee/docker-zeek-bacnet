FROM zeek/zeek:latest

RUN apt-get update && apt-get -y install cmake binpac bifcl libcaf-dev libbroker-dev build-essential libpcap-dev
# RUN zkg refresh && zkg install --force icsnpp-bacnet zeek-plugin-bacnet
RUN zkg refresh && zkg install --force icsnpp-bacnet

RUN sed 's%# @load-sigs ./dpd.sig%@load-sigs ./dpd.sig%g' /usr/local/zeek/share/zeek/site/icsnpp-bacnet/__load__.zeek > /usr/local/zeek/share/zeek/site/icsnpp-bacnet/__load__all_ports__.zeek