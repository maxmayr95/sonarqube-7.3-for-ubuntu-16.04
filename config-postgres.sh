#!/bin/bash
sonarPassword=Password
createuser sonar
psql postgres -c "ALTER USER sonar WITH ENCRYPTED password '$sonarPassword'";
psql postgres -c "CREATE DATABASE sonar OWNER sonar";
