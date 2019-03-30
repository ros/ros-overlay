# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Fetch ROS, packages for working with Fetch and Freight"
HOMEPAGE="https://docs.fetchrobotics.com/"
SRC_URI="https://github.com/fetchrobotics-gbp/${PN}-release/archive/release/indigo/${PN}/0.7.15-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/fetch_calibration
	ros-indigo/fetch_depth_layer
	ros-indigo/fetch_description
	ros-indigo/fetch_ikfast_plugin
	ros-indigo/fetch_maps
	ros-indigo/fetch_moveit_config
	ros-indigo/fetch_navigation
	ros-indigo/fetch_teleop
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
