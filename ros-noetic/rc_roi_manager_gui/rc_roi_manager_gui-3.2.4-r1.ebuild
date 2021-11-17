# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The ros client for the region of interest manager of the itempick and boxpi[...]"
HOMEPAGE="http://wiki.ros.org/rc_roi_manager_gui"
SRC_URI="https://github.com/roboception-gbp/rc_visard-release/archive/release/noetic/${PN}/3.2.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/interactive_markers
	ros-noetic/message_runtime
	ros-noetic/rc_common_msgs
	ros-noetic/rc_pick_client
	ros-noetic/roscpp
	ros-noetic/shape_msgs
	ros-noetic/tf
	ros-noetic/visualization_msgs
	x11-libs/wxGTK
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
