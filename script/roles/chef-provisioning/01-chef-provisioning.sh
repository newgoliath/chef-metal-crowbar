#!/bin/bash
# Copyright 2015, RackN by Rob Hirschfeld
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# File Sources
webserver=$(read_attribute "crowbar/provisioner/server/webserver")
certs="/etc/chef/trusted_certs"
server="192.168.124.10.crt"

# copy file from webserver to node
mkdir -p "$certs"
curl -s -f -L -o "$certs/$server" "$webserver/files/chef/$server"

exit 0
