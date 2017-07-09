# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Follower for the turtlebot Follows humans and robots around by following the ce"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/turtlebot_follower/2.3.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/depth_image_proc
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/nodelet
	ros-kinetic/roscpp
	ros-kinetic/topic_tools
	ros-kinetic/turtlebot_bringup
	ros-kinetic/turtlebot_msgs
	ros-kinetic/turtlebot_teleop
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

