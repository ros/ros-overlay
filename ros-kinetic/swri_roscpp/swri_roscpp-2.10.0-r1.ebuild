# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="swri_roscpp"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/${PN}/2.10.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/diagnostic_updater
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/marti_common_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	test? ( ros-kinetic/message_generation )
	test? ( ros-kinetic/message_runtime )
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/rosunit )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
