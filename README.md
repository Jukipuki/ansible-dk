# ansible-dk

An omnibus-based toolkit for working on Ansible-based infrastructure code.

That means, this project is a set of scripts to build OS packages that bundle together a bunch of tools to make developing with Ansible more robust, reliable, fast, and fun - in other words, a SDLC kit for ansible.  Unless you are contributing to this project, you almost certainly don't need this source code; you're instead looking for the binary OS packages.

## Using the Binaries

### Downloading the OS Packages

Packages for Ubuntu 14.04 (.deb) and Mac OS X (.dmg) are available at https://github.com/omniti-labs/ansible-dk/releases/latest .

### Using the binaries

Installation should be straightforward using your OS's normal package manager.  We install to /opt/ansible-dk, and are careful to not interfere with any existing system Python or Ruby installations.  Uninstalls and upgrades should be clean.

Once you have your package installed, to use the tools, run this magic command in your Bash shell:

    eval "$(ansible-dk shell-init bash)"

This will alter various environment variables so that the Ansible DK's tools appear first in your path, along with all the Python and Ruby libraries they need.

(Currently only bash is supported; patches welcome.)

## Tools Contained in the Kit

#### A Ruby 2.1.x Runtime

This allows us to manage our own gem universe without the user having to know about things like Bundler, rvm, or rbenv.

#### A Python 2.7.x Runtime

This allows us to manage our own module universe without the user having to know about things like virtualenv.

#### ansible-dk CLI tool

This gets symlinked into /usr/bin or /usr/local/bin, depending on your OS, and is the only change outside of /opt/ansible-dk.

#### ansible 2.0.x

The ansible tool itself.

#### ansible-lint

[Ansible-lint](https://github.com/willthames/ansible-lint) is a [linter](https://en.wikipedia.org/wiki/Lint_%28software%29) for ansible.

#### ansible-toolkit

[Ansible-toolkit](https://github.com/dellis23/ansible-toolkit) provides several tools to improve visibility and predictability of roles and vault management.

#### test-kitchen, kitchen-vagrant, and kitchen-ansible

[Test Kitchen](http://kitchen.ci) is a very popular infrastructure testing harness.

#### Molecule

[Molecule](https://github.com/metacloud/molecule) is a tool to ease (automated) testing for Ansible roles.

#### AWS Support: kitchen-ec2, AWS cli, boto library, and jq

Everything you need to have test machines in AWS, plus have dynamic inventory.  jq is included for inventory diagnostics.

## Project Roadmap

### Tools we plan to include

The workflow that the authors use includes using test-kitchen to create and destroy test VMs, with serverspec being used to author the tests.  That's not prescriptive, though - you can do whatever you like.  Our goal is for the Ansible DK to provide enough variety of tools for you to implement a workflow that you prefer.

Long-term, we're open to contributions from the community - such as BATS support, or digitalocean support, for example.  But those are not the current needs of OmniTI, so we will not be focusing on them at the moment.

### Platforms we plan to target

Based on OmniTI's (perhaps idiosyncratic) needs, we initially plan to build packages for:

 * OS X Yosemite
 * OS X El Capitan (commiting to latest Mac OS, plus previous version)
 * Ubuntu 14.04 (commiting to LTS support on ubuntu)

We do not currently have a need for Debian, CentOS, RHEL, or FreeBSD packaging, but such contributions would be very welcome from the community.

At some point in the future, we will likely add OmniOS LTS packaging, which we would aim to also cover SmartOS and Oracle Solaris.

We will probably never have need for a Windows package, but if there are community members willing to implement, test, and maintain it, we'll accept it.

## Bug and Limitations

Probably a great many!  If you find one, open an issue at https://github.com/omniti-labs/ansible-dk/issues .

## Feature Requests and Contributing

If you have something you wish to see added, but have no idea how to do that in Omnibus, please open an issue at https://github.com/omniti-labs/ansible-dk/issues .

If you have some experience doing Omnibus packaging, which is perhaps not for the faint of heart, or are simply exceptionally intrepid, have a read over the Omnibus instructions at https://github.com/chef/omnibus , then do the usual fork-PR workflow on this repo.

## Acknowledgements

### Contributors

This is a project sponsored by OmniTI Labs, the FOSS initiative of OmniTI COmputer Consulting (www.omniti.com).  Community contributors are welcome, and maintainers may join after a vetting period.

 * Clinton Wolfe, DevOps Practice Lead at OmniTI
 * Rick Pufky, DevOps Generalist at OmniTI
 * Lyn Muldrow, Frontend Developer at OmniTI - Logo design
 * Your Name Could Be Here

### Special Thanks

 * Robert Treat, CEO of OmnITI

He said, "You should totally do that."  So, we did.

 * devops-toolchain Google Group

For the enthusiastic response

 * Bill Nottingham  of Ansible / RedHat

For basically saying, sure, why not

 * Joseph Holsten

For giving us a clue for how to build and package python modules under omnibus

 * Chef, Inc.

For Omnibus, and the many build definitions we are using.
