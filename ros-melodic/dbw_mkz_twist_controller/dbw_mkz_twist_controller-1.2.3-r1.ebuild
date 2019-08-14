# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Twist \(speed and angular rate\) controller for brake/throttle/steering"
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/${PN}/1.2.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dbw_mkz_msgs
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
