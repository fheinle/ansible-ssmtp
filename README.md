# Ansible-SSMTP

installas and sets up ssmtp for getting mail off the server

## Installation

Clone this repo to your roles directory:

    mkdir roles
    git clone git@github.com:fheinle/ansible-ssmtp.git roles/ssmtp

## Usage

Pass vars to this role to set up smtp server credentials:

    smtp_user: username
    smtp_password: you should really use ansible's vault here
    smtp_server: smtp.server.url
    smtp_root_user: email address that should recieve root's mail

Defaults that may be overriden:

    smtp_port: 587
    smtp_use_tls: "yes"
    smtp_local_hostname: "{{ ansible_fqdn }}"
    smtp_rewrite_domain "{{ smtp_user.split('@')[0] }}"

## Build

[![Build Status](https://travis-ci.org/fheinle/ansible-ssmtp.svg?branch=master)](https://travis-ci.org/fheinle/ansible-ssmtp)

## Copyright

Copyright (c) 2016 Florian Heinle <launchpad@planet-tiax.de>

MIT License
