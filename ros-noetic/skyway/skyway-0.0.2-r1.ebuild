# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Package for using SkyWay from ROS"
HOMEPAGE="https://github.com/ntt-t3/skyway_for_ros"
SRC_URI="https://github.com/ntt-t3/${PN}_for_ros-release/archive/release/noetic/${PN}/0.0.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/message_runtime
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/std_msgs
	test? ( ros-noetic/rostest )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
