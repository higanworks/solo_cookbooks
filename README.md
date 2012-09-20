Notice
=====

Move to https://github.com/higanworks-cookbooks


# solo cookbooks

## setup chef-solo

```
mkdir /opt/chef-solo
cd /opt/chef-solo

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
file_backup_path "/opt/chef-solo/backup"
cookbook_path ["/opt/chef-solo/solo_cookbooks"]
EOL

git clone https://github.com/higanworks/solo_cookbooks.git

cd solo_cookbooks
git submodule update --init
```


## Usage example
`chef-solo -c ./solo.rb -o "monit_binaries"`
