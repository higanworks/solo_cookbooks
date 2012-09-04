#
# Cookbook Name:: nginx_ppa
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
include_recipe "apt"

apt_repository "nginx-ppa" do
  uri "http://ppa.launchpad.net/nginx/stable/ubuntu"
  distribution node.lsb.codename
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "C300EE8C"
end 

package "nginx" do
  action :install
end
