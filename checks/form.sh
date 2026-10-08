#!/bin/sh
# The sync form posts a serialized object to /sync.
set -e
H=http://web:5000
P=$(curl -fsS "$H/")
echo "$P" | grep -q 'action="/sync"'
echo "$P" | grep -q 'name="data_obj"'
