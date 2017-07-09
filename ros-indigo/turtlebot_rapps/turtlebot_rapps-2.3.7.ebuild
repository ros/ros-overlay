# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The core set of turtlebot '"'"'app manager'"'"' apps are defined in this package.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/indigo/turtlebot_rapps/2.3.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/compressed_image_transport
	ros-indigo/kobuki_auto_docking
	ros-indigo/robot_pose_publisher
	ros-indigo/tf
	ros-indigo/topic_tools
	ros-indigo/turtlebot_bringup
	ros-indigo/turtlebot_follower
	ros-indigo/turtlebot_navigation
	ros-indigo/turtlebot_teleop
	ros-indigo/warehouse_ros
	ros-indigo/world_canvas_server
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

