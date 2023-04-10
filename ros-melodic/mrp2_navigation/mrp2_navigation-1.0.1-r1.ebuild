# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch files, parameters and maps for different navigation applications."
HOMEPAGE="http://wiki.ros.org/mrp2_navigation"
SRC_URI="https://github.com/milvusrobotics/mrp2_common-release/archive/release/melodic/${PN}/1.0.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/amcl
	ros-melodic/cartographer
	ros-melodic/gmapping
	ros-melodic/map_server
	ros-melodic/move_base
	ros-melodic/urdf
	ros-melodic/xacro
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
