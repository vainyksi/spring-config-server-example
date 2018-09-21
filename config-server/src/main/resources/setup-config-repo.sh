#!/bin/bash

cd ././../../../
if [ ! -d config-repo ]; then
  mkdir config-repo
fi

git init

echo "message = Hello world
greeter.name = Jack
devices = device1, device2, device3" > a-bootiful-client.properties
git add a-bootiful-client.properties
git commit -m "upload a-bootiful-client config"

echo '# An employee record
name: Martin D`vloper
job: Developer
skill: Elite
employed: True
foods:
- Apple
- Orange
- Strawberry
- Mango
languages:
  perl: Elite
  python: Elite
  pascal: Lame
education: |
  4 GCSEs
  3 A-Levels
  BSc in the Internet of Things
config: {
  "name": "CHANGEME",
  "description": "CHANGEME",
  "environment": "CHANGEME",
  "secret_file": "CHANGEME",
  "run_sequentially": false,
  "orchestration": "ha_controller_n_compute",
  "nodes": [
  {
    "fqdn": "CHANGEME",
    "password": "CHANGEME",
    "identity_file": "CHANGEME",
    "quit_on_error": true,
    "run_order_number": 1,
    "runlist": [
      "role[ibm-os-ha-controller-node]"
    ]
  },
  {
    "fqdn": "CHANGEME",
    "password": "CHANGEME",
    "identity_file": "CHANGEME",
    "quit_on_error": true,
    "run_order_number": 1,
    "runlist": [
      "role[ibm-os-ha-controller-node]"
    ]
  },
  {
    "fqdn": "CHANGEME",
    "password": "CHANGEME",
    "identity_file": "CHANGEME",
    "quit_on_error": true,
    "run_order_number": 1,
    "runlist": [
      "role[ibm-os-ha-controller-node]"
    ]
  },
  {
    "fqdn": "CHANGEME",
    "password": "CHANGEME",
    "identity_file": "CHANGEME",
    "quit_on_error": true,
    "run_order_number": 10,
    "runlist": [
      "role[ibm-os-compute-node-kvm]"
    ]
  },
  ]
}' > client3.yaml
git add client3.yaml
git commit -m "upload client3 config"
