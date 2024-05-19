# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS API for Sesame smart lock"
HOMEPAGE="http://ros.org/wiki/sesame_ros"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/${PN}/2.1.28-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/message_runtime
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/catkin_virtualenv
	ros-noetic/message_generation
	virtual/libffi
	dev-libs/openssl
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
