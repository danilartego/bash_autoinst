#!/bin/bash

sudo apt update -y
sudo apt install postgresql postgresql-contrib -y
sudo systemctl start postgresql.service -y

sudo -i -u postgres
sudo -u postgres psql
