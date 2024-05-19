# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="More efficient version of tf/tf_remap able to handle TFs at kHz with tens o[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/peci1/${PN}-release/archive/release/noetic/${PN}/1.1.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/roscpp
	ros-noetic/tf2_msgs
	ros-noetic/xmlrpcpp
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/tf )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
