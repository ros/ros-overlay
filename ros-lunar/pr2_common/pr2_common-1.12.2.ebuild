# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="URDF description of the robot kinematics and dynamics, 3D models of robot c[...]"
HOMEPAGE="http://ros.org/wiki/pr2_common"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/lunar/${PN}/1.12.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/pr2_dashboard_aggregator
	ros-lunar/pr2_description
	ros-lunar/pr2_machine
	ros-lunar/pr2_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
