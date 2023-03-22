# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS Foxglove Bridge"
HOMEPAGE="https://github.com/foxglove/ros-foxglove-bridge"
SRC_URI="https://github.com/foxglove/ros_${PN}-release/archive/release/noetic/${PN}/0.5.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/nodelet
	ros-noetic/ros_babel_fish
	ros-noetic/roscpp
	ros-noetic/rosgraph_msgs
	ros-noetic/roslib
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
	test? ( ros-noetic/std_msgs )
	test? ( ros-noetic/std_srvs )
	dev-libs/openssl
	sys-libs/zlib
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/ros_environment
	dev-cpp/asio
	dev-libs/openssl
	websocketpp
	dev-cpp/nlohmann_json
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
