# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="multi_map_server provides the"
HOMEPAGE="http://ros.org/wiki/map_server"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/melodic/${PN}/2.2.10-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/map_server
	ros-melodic/nav_msgs
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/tf
	media-libs/sdl-image
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/jsk_tools
	ros-melodic/rosmake
	dev-python/pillow
	dev-python/pyyaml
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
