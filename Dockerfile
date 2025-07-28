version: "3.7"
services:
  synapse:
    image: matrixdotorg/synapse:latest
    container_name: synapse
    restart: always
    volumes:
      - ./data:/data
    environment:
      - SYNAPSE_SERVER_NAME=localhost
      - SYNAPSE_REPORT_STATS=no
    ports:
      - "8008:8008"