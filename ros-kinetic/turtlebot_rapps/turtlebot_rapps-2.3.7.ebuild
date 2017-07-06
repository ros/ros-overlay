# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The core set of turtlebot '"'"'app manager'"'"' apps are defined in this package.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/turtlebot_rapps/2.3.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/compressed_image_transport
	ros-kinetic/kobuki_auto_docking
	ros-kinetic/robot_pose_publisher
	ros-kinetic/tf
	ros-kinetic/topic_tools
	ros-kinetic/turtlebot_bringup
	ros-kinetic/turtlebot_follower
	ros-kinetic/turtlebot_navigation
	ros-kinetic/turtlebot_teleop
	ros-kinetic/warehouse_ros
	ros-kinetic/world_canvas_server
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

