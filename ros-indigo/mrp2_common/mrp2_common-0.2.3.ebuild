# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Necessary packages in common for both simulation and real environment.'"
HOMEPAGE="http://wiki.ros.org/mrp2_common"
SRC_URI="https://github.com/milvusrobotics/mrp2_common-release/archive/release/indigo/mrp2_common/0.2.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/mrp2_analyzer
	ros-indigo/mrp2_control
	ros-indigo/mrp2_description
	ros-indigo/mrp2_navigation
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

