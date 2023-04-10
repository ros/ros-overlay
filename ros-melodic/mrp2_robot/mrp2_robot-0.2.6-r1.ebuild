# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="MRP2 robot description and launch files"
HOMEPAGE="http://wiki.ros.org/mrp2_robot"
SRC_URI="https://github.com/milvusrobotics/${PN}-release/archive/release/melodic/${PN}/0.2.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/mrp2_bringup
	ros-melodic/mrp2_display
	ros-melodic/mrp2_hardware
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
