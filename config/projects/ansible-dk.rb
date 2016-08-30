
name "ansible-dk"
maintainer "OmniTI"
homepage "https://github.com/omniti-labs/ansible-dk"

# Defaults to C:/ansible-dk on Windows
# and /opt/ansible-dk on all other platforms
install_dir "#{default_root}/#{name}"

build_version Omnibus::BuildVersion.semver
build_iteration 1

# Version pinning.  Most of the software definitons have a
# default_version of "master" (ie, floating on latest)
override :ruby,              version: "2.2.5"
override :bundler,           version: "1.12.5"
override :rubygems,          version: "2.6.6"
override :'test-kitchen',    version: "v1.11.1"
override :'kitchen-ansible', version: "0.45.3"
override :'kitchen-vagrant', version: "v0.20.0"
override :'kitchen-ec2',     version: "v1.1.0"
override :awscli,            version: "1.10.1"
override :jq,                version: "jq-1.5"
override :python,            version: "2.7.11"
override :pip,               version: "8.0.3"
override :ansible,           version: "2.0.0.2"
override :paramiko,          version: "1.16.0"
override :pycrypto,          version: "2.6.1"
override :'ansible-lint',    version: "2.3.3"
override :appbundler,        version: "v0.9.0"
override :serverspec,        version: "v2.36.0"
override :molecule,          version: "1.3.0"
override :bats,              version: "v0.4.0"


# Creates required build directories
dependency "preparation"

# ansible-dk dependencies/components

# Python land
dependency "python"
dependency "pip"
dependency "ansible-dk-cli"
dependency "awscli"
dependency "ansible"
dependency "ansible-lint"
dependency "molecule"

# Ruby land
dependency "ruby"
dependency "rubygems"
dependency "bundler"
dependency "appbundler"
dependency "test-kitchen"
dependency "kitchen-ansible"
dependency "kitchen-vagrant"
dependency "kitchen-ec2"
dependency "serverspec"

# Others
dependency "jq"
dependency "bats"

# Version manifest file
dependency "version-manifest"

exclude "**/.git"
exclude "**/bundler/git"

package :pkg do
  identifier 'com.omniti.labs.ansible-dk'
end

compress :dmg
