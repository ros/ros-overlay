# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Defines helper functions and routines that greatly help when trying to crea[...]"
HOMEPAGE="http://www.ros.org/wiki/settlerlib"
SRC_URI="https://github.com/ros-gbp/calibration-release/archive/release/melodic/${PN}/0.10.14-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/calibration_msgs
	ros-melodic/rosconsole
	ros-melodic/rostime
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
