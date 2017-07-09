# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'A set of interactive markers for various methods of remote teleoperation manipul'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/remote_manipulation_markers-release/archive/release/indigo/remote_manipulation_markers/1.0.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/geometry_msgs
	ros-indigo/interactive_markers
	ros-indigo/message_runtime
	ros-indigo/rail_manipulation_msgs
	ros-indigo/rail_segmentation
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_srvs
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

