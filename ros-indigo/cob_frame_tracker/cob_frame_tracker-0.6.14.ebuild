# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The cob_frame_tracker package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/indigo/cob_frame_tracker/0.6.14-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/cob_srvs
	ros-indigo/control_toolbox
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/interactive_markers
	ros-indigo/kdl_conversions
	ros-indigo/kdl_parser
	ros-indigo/message_runtime
	ros-indigo/orocos_kdl
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/tf
	ros-indigo/visualization_msgs
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

