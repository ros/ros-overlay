# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The frame_editor package"
HOMEPAGE="http://www.ipa.fraunhofer.de/"
SRC_URI="https://github.com/ipa320/rqt_frame_editor_plugin-release/archive/release/indigo/frame_editor/1.0.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/interactive_markers
	ros-indigo/message_runtime
	ros-indigo/rospy
	ros-indigo/rqt_gui
	ros-indigo/rqt_gui_py
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
