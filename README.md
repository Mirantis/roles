# roles

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with roles](#setup)
    * [What roles affects](#what-roles-affects)
    * [Beginning with roles](#beginning-with-roles)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Limitations - OS compatibility, etc.](#limitations)

## Overview

This is a special puppet module for assigning roles to boxes.

## Module Description

Each node should get exactly *one* role assigned to it.
The role classes contained in this module do nothing except *include* profile classes.
A profile class will be from the profiles module and is where org-specific data
lookups occur and then that data is passed into component modules as parameters.

For more information, check out Gary Larizza's workshop  on roles/profiles/component modules:
https://puppetlabs.com/presentations/workshop-doing-refactor-dance-making-your-puppet-modules-more-modular-gary-larizza

I was there and it was lovely.

## Setup

### What roles affects

* This module sets up role classes to be assigned to your nodes
* You should be able to read a role like a book and have a good idea of what technologies
are defined on that particular node and what it does

### Beginning with roles

This module is intended to be a template module for roles.  As your configuration needs
will no doubt need to change at some point, clone this repo into your own git project,
then modify it as you wish and add it to your Puppetfile and deploy it.

## Usage

This is a very basic and special module and therefore there are no parameters or special
usage instructions.  Simply assign a role class to your external node classifier for a 
particular system and it will include that role class.  That's it.

## Limitations

This is a generic module and has no specific limitations as only includes are done
