# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Improved ROS message filters"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fkie-release/message_filters-release/archive/release/noetic/${PN}/1.1.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/image_transport
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/tf2_ros
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
	test? ( ros-noetic/std_msgs )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
