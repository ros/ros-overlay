# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS console output library."
HOMEPAGE="http://www.ros.org/wiki/rosconsole"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/${PN}/1.13.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cpp_common
	ros-melodic/rosbuild
	ros-melodic/rostime
	dev-libs/apr
	dev-libs/apr-util
	dev-libs/log4cxx
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rosunit
	dev-libs/boost
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
