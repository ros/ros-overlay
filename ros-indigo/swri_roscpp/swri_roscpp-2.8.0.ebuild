# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="swri_roscpp"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/indigo/${PN}/2.8.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/diagnostic_updater
	ros-indigo/dynamic_reconfigure
	ros-indigo/marti_common_msgs
	ros-indigo/nav_msgs
	ros-indigo/roscpp
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	test? ( ros-indigo/rostest )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
