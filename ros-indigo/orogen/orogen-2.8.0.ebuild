# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="orogen offers a specification interface for components developped in the	Oro"
HOMEPAGE="http://rock-robotics.org/documentation/orogen"
SRC_URI="https://github.com/orocos-gbp/orogen-release/archive/release/indigo/orogen/2.8.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/catkin
	ros-indigo/metaruby
	ros-indigo/rtt
	ros-indigo/rtt_typelib
	ros-indigo/typelib
	ros-indigo/utilrb
	dev-ruby/nokogiri
	dev-ruby/rake
	dev-lang/ruby
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

