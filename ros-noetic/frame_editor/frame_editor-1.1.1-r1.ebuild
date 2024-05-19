# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The frame_editor package"
HOMEPAGE="http://www.ipa.fraunhofer.de/"
SRC_URI="https://github.com/ipa320/rqt_${PN}_plugin-release/archive/release/noetic/${PN}/1.1.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/dynamic_reconfigure
	ros-noetic/geometry_msgs
	ros-noetic/interactive_markers
	ros-noetic/message_runtime
	ros-noetic/qt_gui_py_common
	ros-noetic/rospy
	ros-noetic/rqt_gui
	ros-noetic/rqt_gui_py
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
