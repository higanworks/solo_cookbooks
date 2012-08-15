# solo cookbooks

## setup chef-solo

```
mkdir /opt/chef-solo

rvm use @chef-solo --create
echo rvm use $rvm_env_string > .rvmrc
rvm rvmrc trust .rvmrc
cat <<'EOL' >Gemfile
source "https://rubygems.org"
gem "chef"
EOL
bundle

rvm wrapper $rvm_env_string wrap chef-solo
mkdir /opt/chef-solo/cache

cat <<"EOL" >./solo.rb
file_cache_path "/opt/chef-solo/cache"
cookbook_path ["/opt/chef-solo/solo_cookbooks"]
EOL

git clone https://github.com/higanworks/solo_cookbooks.git
```