# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Messages for interfacing with various computer vision pipelines, such as\
 [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/Kukanani/${PN}-release/archive/release/noetic/${PN}/0.0.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/message_generation
	ros-noetic/message_runtime
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	test? ( ros-noetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
