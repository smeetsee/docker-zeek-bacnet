FROM zeek/zeek:latest

RUN zkg refresh && zkg install --force icsnpp-bacnet zeek-plugin-bacnet