# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Fetch ROS, packages for working with Fetch and Freight"
HOMEPAGE="https://docs.fetchrobotics.com/"
SRC_URI="https://github.com/fetchrobotics-gbp/${PN}-release/archive/release/kinetic/${PN}/0.7.15-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/fetch_calibration
	ros-kinetic/fetch_depth_layer
	ros-kinetic/fetch_description
	ros-kinetic/fetch_ikfast_plugin
	ros-kinetic/fetch_maps
	ros-kinetic/fetch_moveit_config
	ros-kinetic/fetch_navigation
	ros-kinetic/fetch_teleop
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
