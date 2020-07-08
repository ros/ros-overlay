# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains testing utilities used by Pilz packages."
HOMEPAGE="https://wiki.ros.org/pilz_testutils"
SRC_URI="https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/${PN}/0.5.18-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/pilz_utils
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
