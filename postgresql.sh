#!/bin/bash

sudo apt update -y
sudo apt install postgresql postgresql-contrib libpq-dev -y
sudo systemctl start postgresql.service

