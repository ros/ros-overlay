# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The sr_hand_detector package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/shadow-robot/${PN}-release/archive/release/melodic/${PN}/0.0.3-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/roscpp
	ros-melodic/roslib
	test? ( ros-melodic/rostest )
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
