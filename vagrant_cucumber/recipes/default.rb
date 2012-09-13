#
# Cookbook Name:: vargrant_cucmber
# Recipe:: default
#
# Copyright 2012, HiganWorks LLC
#
# All rights reserved
#

%w(libxml2 build-essential git).each do |w|
  package w do
    action :install
  end
end

gem_package("cucumber") do
  gem_binary("/opt/vagrant_ruby/bin/gem")
end

### clone your cucmber features
### 
#  git "/opt/mytests" do
#   repository "git://github.com/higanworks/dummy_features.git"
#   reference "master"
#   enable_submodules true
#   action :sync
# end
 
## run cucmber
# not yet..
