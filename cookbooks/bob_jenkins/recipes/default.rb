#
# Cookbook Name:: create
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'bob_jenkins::secret'
include_recipe 'bob_jenkins::git'
include_recipe 'bob_jenkins::rvm'
include_recipe 'bob_jenkins::java'
include_recipe 'bob_jenkins::jenkins'
