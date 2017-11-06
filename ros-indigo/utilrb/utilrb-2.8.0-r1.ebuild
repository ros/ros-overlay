# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Ruby toolkit: This library is a collection of useful Ruby classes"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/orocos-gbp/utilrb-release/archive/release/indigo/utilrb/2.8.0-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/catkin
	dev-ruby/facets
	dev-ruby/hoe
	sys-libs/readline
	dev-lang/ruby
"
DEPEND="${RDEPEND}
	dev-util/cmake
	sys-libs/readline
	dev-ruby/rake-compiler
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
