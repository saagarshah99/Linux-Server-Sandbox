#!/bin/bash
echo "${SUPERUSER}" | sudo -S -p '' kill -9 $(lsof -t -i:8000)

