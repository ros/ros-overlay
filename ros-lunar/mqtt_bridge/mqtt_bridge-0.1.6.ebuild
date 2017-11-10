# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The mqtt_bridge package"
HOMEPAGE="http://www.ros.org/wiki/mqtt_bridge"
SRC_URI="https://github.com/groove-x/mqtt_bridge-release/archive/release/lunar/mqtt_bridge/0.1.6-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/rosbridge_library
	ros-lunar/rospy
	ros-lunar/std_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
