# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Fetch ROS, packages for working with Fetch and Freight"
HOMEPAGE="https://docs.fetchrobotics.com/"
SRC_URI="https://github.com/fetchrobotics-gbp/${PN}-release/archive/release/melodic/${PN}/0.8.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/fetch_calibration
	ros-melodic/fetch_depth_layer
	ros-melodic/fetch_description
	ros-melodic/fetch_ikfast_plugin
	ros-melodic/fetch_maps
	ros-melodic/fetch_moveit_config
	ros-melodic/fetch_navigation
	ros-melodic/fetch_teleop
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
