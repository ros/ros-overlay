# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The ros client for the region of interest manager of the itempick and boxpi[...]"
HOMEPAGE="http://wiki.ros.org/rc_roi_manager_gui"
SRC_URI="https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/${PN}/3.0.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/interactive_markers
	ros-melodic/message_runtime
	ros-melodic/rc_common_msgs
	ros-melodic/rc_pick_client
	ros-melodic/roscpp
	ros-melodic/shape_msgs
	ros-melodic/tf
	ros-melodic/visualization_msgs
	x11-libs/wxGTK
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
