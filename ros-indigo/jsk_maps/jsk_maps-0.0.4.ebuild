# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="jsk_maps"
HOMEPAGE="http://ros.org/wiki/jsk_maps"
SRC_URI="https://github.com/tork-a/jsk_demos-release/archive/release/indigo/jsk_maps/0.0.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/euslisp
	ros-indigo/geometry_msgs
	ros-indigo/jsk_rviz_plugins
	ros-indigo/jskeus
	ros-indigo/multi_map_server
	virtual/imagemagick-tools
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
