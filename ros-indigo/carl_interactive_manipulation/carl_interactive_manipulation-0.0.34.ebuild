# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Interactive Manipulation for CARL"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/carl_bot-release/archive/release/indigo/carl_interactive_manipulation/0.0.34-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/carl_moveit
	ros-indigo/carl_safety
	ros-indigo/geometry_msgs
	ros-indigo/interactive_markers
	ros-indigo/move_base_msgs
	ros-indigo/rail_pick_and_place_msgs
	ros-indigo/rail_segmentation
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/urdf
	ros-indigo/visualization_msgs
	ros-indigo/wpi_jaco_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

