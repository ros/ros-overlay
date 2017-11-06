# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Follower for the turtlebot. Follows humans and robots around by following t[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/indigo/turtlebot_follower/2.3.7-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/depth_image_proc
	ros-indigo/dynamic_reconfigure
	ros-indigo/nodelet
	ros-indigo/roscpp
	ros-indigo/topic_tools
	ros-indigo/turtlebot_bringup
	ros-indigo/turtlebot_msgs
	ros-indigo/turtlebot_teleop
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
