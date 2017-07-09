# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The household_objects_database_msgs package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/household_objects_database_msgs-release/archive/release/kinetic/household_objects_database_msgs/0.1.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/message_generation
	ros-kinetic/message_runtime
	ros-kinetic/object_recognition_msgs
	ros-kinetic/shape_msgs
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

