# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Tools for calculating the intersection of interval messages coming\
	in [...]"
HOMEPAGE="http://www.ros.org/wiki/interval_intersection"
SRC_URI="https://github.com/ros-gbp/calibration-release/archive/release/melodic/${PN}/0.10.14-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/calibration_msgs
	ros-melodic/geometry_msgs
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/roscpp_serialization
	ros-melodic/rostime
	ros-melodic/std_msgs
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
