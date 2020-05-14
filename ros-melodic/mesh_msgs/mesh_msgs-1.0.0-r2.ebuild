# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Various Message Types for Mesh Data."
HOMEPAGE="http://wiki.ros.org/ros_mesh_tools/mesh_msgs"
SRC_URI="https://github.com/uos-gbp/mesh-tools/archive/release/melodic/${PN}/1.0.0-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
