Description
===========

install gem cucumber to vargrant VM.

<pre><code>
$ vagrant ssh
# -- logged in to VM
$ cucumber --version
1.2.1
</code></pre>

Requirements
============

* vagrant 1.0.x


Attributes
==========

Usage
=====
at Vagrantfile

     chef.add_recipe "vagrant_cucumber::default"    

