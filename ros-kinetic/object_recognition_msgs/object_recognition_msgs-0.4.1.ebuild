# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Object_recognition_msgs contains the ROS message and the actionlib definition us"
HOMEPAGE="http://www.ros.org/wiki/object_recognition"
SRC_URI="https://github.com/ros-gbp/object_recognition_msgs-release/archive/release/kinetic/object_recognition_msgs/0.4.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/sensor_msgs
	ros-kinetic/shape_msgs
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

