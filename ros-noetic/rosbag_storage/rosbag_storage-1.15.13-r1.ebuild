# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This is a set of tools for recording from and playing back ROS\
	message[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/${PN}/1.15.13-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cpp_common
	ros-noetic/pluginlib
	ros-noetic/roscpp_serialization
	ros-noetic/roscpp_traits
	ros-noetic/roslz4
	ros-noetic/rostime
	app-arch/bzip2
	dev-libs/boost[python]
	dev-libs/console_bridge
	app-crypt/gpgme
	dev-libs/openssl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/rostest
	ros-noetic/std_msgs
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
