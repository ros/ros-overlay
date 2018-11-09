# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides ROS specific hooks for stage"
HOMEPAGE="http://ros.org/wiki/stage_ros"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/1.8.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/nav_msgs
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/stage
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
