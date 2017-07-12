# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Demo Applications for CARL"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/carl_demos-release/archive/release/indigo/carl_demos/0.0.9-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/carl_dynamixel
	ros-indigo/carl_moveit
	ros-indigo/carl_navigation
	ros-indigo/carl_safety
	ros-indigo/geometry_msgs
	ros-indigo/interactive_marker_proxy
	ros-indigo/message_runtime
	ros-indigo/rail_manipulation_msgs
	ros-indigo/rail_user_queue_manager
	ros-indigo/roscpp
	ros-indigo/tf2_web_republisher
	ros-indigo/web_video_server
	app-accessibility/espeak
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

