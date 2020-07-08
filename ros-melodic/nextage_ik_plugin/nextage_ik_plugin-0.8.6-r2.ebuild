# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="IKFast package for NEXTAGE Open"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/rtmros_nextage-release/archive/release/melodic/${PN}/0.8.6-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/moveit_core
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/tf_conversions
	virtual/lapack
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
