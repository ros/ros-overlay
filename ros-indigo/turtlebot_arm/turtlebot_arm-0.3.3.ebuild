# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The turtlebot arm meta package."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot_arm-release/archive/release/indigo/turtlebot_arm/0.3.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/turtlebot_arm_block_manipulation
	ros-indigo/turtlebot_arm_bringup
	ros-indigo/turtlebot_arm_description
	ros-indigo/turtlebot_arm_ikfast_plugin
	ros-indigo/turtlebot_arm_kinect_calibration
	ros-indigo/turtlebot_arm_moveit_config
	ros-indigo/turtlebot_arm_moveit_demos
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
