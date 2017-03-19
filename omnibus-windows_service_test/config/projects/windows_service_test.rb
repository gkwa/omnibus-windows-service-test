#
# Copyright 2017 YOUR NAME
#
# All Rights Reserved.
#

name "windowsservicetest"
maintainer "CHANGE ME"
homepage "https://CHANGE-ME.com"

# Defaults to C:/windows_service_test on Windows
# and /opt/windows_service_test on all other platforms
install_dir "#{default_root}/#{name}"

build_version Omnibus::BuildVersion.semver
build_iteration 1

# Creates required build directories
dependency "preparation"

# windows_service_test dependencies/components
# dependency "somedep"
dependency "windows_service_plus"

# Version manifest file
dependency "version-manifest"

exclude "**/.git"
exclude "**/bundler/git"

package :msi do
	upgrade_code '06aa25eb-8dba-43ee-9c08-fdce0e916f92'
end
