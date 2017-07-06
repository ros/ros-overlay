# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The jsk_pepper_startup package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_robot-release/archive/release/indigo/jsk_pepper_startup/1.0.6-2.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/image_view
	ros-indigo/joy
	ros-indigo/nao_apps
	ros-indigo/nao_interaction_launchers
	ros-indigo/nao_interaction_msgs
	ros-indigo/naoqi_apps
	ros-indigo/naoqi_bridge
	ros-indigo/naoqi_dashboard
	ros-indigo/naoqi_pose
	ros-indigo/pepper_bringup
	ros-indigo/pepper_description
	ros-indigo/roseus
	ros-indigo/rostwitter
	ros-indigo/teleop_twist_joy
	ros-indigo/topic_tools
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

