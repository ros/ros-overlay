# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The multiwii package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/christianrauch/ros-multiwii-release/archive/release/kinetic/multiwii/2.0.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/message_runtime
	ros-kinetic/msp
	ros-kinetic/roscpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/geometry_msgs
	ros-kinetic/mavros_msgs
	ros-kinetic/message_generation
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/visualization_msgs
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

