# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="gundam_robot is a meta package for GUNDAM RX-78 robot controller and simulator"
HOMEPAGE="http://wiki.ros.org/gundam_robot"
SRC_URI="https://github.com/gundam-global-challenge/${PN}-release/archive/release/melodic/${PN}/0.0.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/gundam_rx78_control
	ros-melodic/gundam_rx78_description
	ros-melodic/gundam_rx78_gazebo
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
