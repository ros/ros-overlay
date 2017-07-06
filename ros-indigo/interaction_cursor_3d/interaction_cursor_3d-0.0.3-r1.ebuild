# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Metapackage for interaction cursor functionality.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/aleeper/interaction_cursor_3d-release/archive/release/indigo/interaction_cursor_3d/0.0.3-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cmake_modules
	ros-indigo/geometry_msgs
	ros-indigo/interaction_cursor_msgs
	ros-indigo/message_runtime
	ros-indigo/razer_hydra
	ros-indigo/roscpp
	ros-indigo/rviz
	ros-indigo/rviz_fixed_view_controller
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/visualization_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

