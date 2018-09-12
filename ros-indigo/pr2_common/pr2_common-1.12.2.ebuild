# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="URDF description of the robot kinematics and dynamics, 3D models of robot c[...]"
HOMEPAGE="http://ros.org/wiki/pr2_common"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/indigo/${PN}/1.12.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/pr2_dashboard_aggregator
	ros-indigo/pr2_description
	ros-indigo/pr2_machine
	ros-indigo/pr2_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
