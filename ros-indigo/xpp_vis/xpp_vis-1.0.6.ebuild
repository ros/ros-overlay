# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Visualization for the XPP Motion Framework."
HOMEPAGE="http://github.com/leggedrobotics/xpp"
SRC_URI="https://github.com/leggedrobotics/xpp-release/archive/release/indigo/${PN}/1.0.6-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/kdl_parser
	ros-indigo/robot_state_publisher
	ros-indigo/roscpp
	ros-indigo/tf
	ros-indigo/visualization_msgs
	ros-indigo/xpp_msgs
	ros-indigo/xpp_states
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
