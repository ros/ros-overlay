# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Generic Messages for Communication with an Automotive Autonomous Platform"
HOMEPAGE="http://github.com/astuff/automotive_platform_msgs"
SRC_URI="https://github.com/astuff/automotive_autonomy_msgs-release/archive/release/noetic/${PN}/3.0.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/message_runtime
	ros-noetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	ros-noetic/ros_environment
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
