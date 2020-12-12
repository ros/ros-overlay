# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION="tf is a package that lets the user keep track of multiple coordinate\
frame[...]"
HOMEPAGE="http://www.ros.org/wiki/tf"
SRC_URI="https://github.com/ros-gbp/geometry-release/archive/release/noetic/${PN}/1.13.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/message_filters
	ros-noetic/message_runtime
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/roswtf
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf2_ros
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
	media-gfx/graphviz
"
DEPEND="${RDEPEND}
	ros-noetic/angles
	ros-noetic/catkin
	ros-noetic/message_generation
	ros-noetic/rostime
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
