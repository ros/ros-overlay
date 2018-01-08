# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The ur_bringup package"
HOMEPAGE="http://ros.org/wiki/ur_bringup"
SRC_URI="https://github.com/ros-industrial-release/universal_robot-release/archive/release/indigo/${PN}/1.1.11-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/tf2_ros
	ros-indigo/ur_description
	ros-indigo/ur_driver
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
