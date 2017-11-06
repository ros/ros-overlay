# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="MRP2 robot description and launch files"
HOMEPAGE="http://wiki.ros.org/mrp2_robot"
SRC_URI="https://github.com/milvusrobotics/mrp2_robot-release/archive/release/indigo/mrp2_robot/0.2.5-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/mrp2_bringup
	ros-indigo/mrp2_display
	ros-indigo/mrp2_hardware
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
