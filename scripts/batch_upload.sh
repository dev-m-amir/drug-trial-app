#!/bin/bash
curl -T output.sql ftp://admin:admin@ftp.hospital.com/lycanthropy/
rm output.sql
