#!/bin/bash

curl -X POST http://localhost:8888/_matrix/client/v3/register \
  -H "Content-Type: application/json" \
  -d '{
    "username": "admin",
    "password": "l!ghtRObin71",
    "auth": {
      "type": "m.login.dummy"
    }
  }'