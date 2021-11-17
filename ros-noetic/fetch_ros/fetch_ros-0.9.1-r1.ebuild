# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Fetch ROS, packages for working with Fetch and Freight"
HOMEPAGE="https://docs.fetchrobotics.com/"
SRC_URI="https://github.com/fetchrobotics-gbp/${PN}-release/archive/release/noetic/${PN}/0.9.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/fetch_calibration
	ros-noetic/fetch_depth_layer
	ros-noetic/fetch_description
	ros-noetic/fetch_ikfast_plugin
	ros-noetic/fetch_maps
	ros-noetic/fetch_moveit_config
	ros-noetic/fetch_navigation
	ros-noetic/fetch_teleop
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
