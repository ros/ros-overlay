# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The manipulation_msgs package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/manipulation_msgs-release/archive/release/indigo/manipulation_msgs/0.2.0-2.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib_msgs
	ros-indigo/geometry_msgs
	ros-indigo/household_objects_database_msgs
	ros-indigo/message_generation
	ros-indigo/message_runtime
	ros-indigo/sensor_msgs
	ros-indigo/shape_msgs
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
