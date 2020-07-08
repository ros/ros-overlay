# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="swri_roscpp"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/${PN}/2.13.7-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/diagnostic_updater
	ros-melodic/dynamic_reconfigure
	ros-melodic/marti_common_msgs
	ros-melodic/nav_msgs
	ros-melodic/roscpp
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	test? ( ros-melodic/message_generation )
	test? ( ros-melodic/message_runtime )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
	dev-libs/boost[python]
	dev-cpp/yaml-cpp
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
