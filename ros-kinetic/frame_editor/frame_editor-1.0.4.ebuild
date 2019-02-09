# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The frame_editor package"
HOMEPAGE="http://www.ipa.fraunhofer.de/"
SRC_URI="https://github.com/ipa320/rqt_${PN}_plugin-release/archive/release/kinetic/${PN}/1.0.4-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/geometry_msgs
	ros-kinetic/interactive_markers
	ros-kinetic/message_runtime
	ros-kinetic/rospy
	ros-kinetic/rqt_gui
	ros-kinetic/rqt_gui_py
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
