# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="multi_map_server provides the"
HOMEPAGE="http://ros.org/wiki/map_server"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/kinetic/${PN}/2.2.9-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/map_server
	ros-kinetic/nav_msgs
	ros-kinetic/rosconsole
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/tf
	media-libs/sdl-image
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/jsk_tools
	ros-kinetic/rosmake
	dev-python/pillow
	dev-python/pyyaml
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
