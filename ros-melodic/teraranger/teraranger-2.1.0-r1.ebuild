# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides ros nodes for single sensors from Terabee"
HOMEPAGE="http://wiki.ros.org/teraranger"
SRC_URI="https://github.com/Terabee/${PN}-release/archive/release/melodic/${PN}/2.1.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/serial
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
