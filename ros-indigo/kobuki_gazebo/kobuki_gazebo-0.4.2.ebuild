# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Kobuki simulation for Gazebo'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/kobuki_desktop-release/archive/release/indigo/kobuki_gazebo/0.4.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gazebo_plugins
	ros-indigo/gazebo_ros
	ros-indigo/kobuki_description
	ros-indigo/kobuki_gazebo_plugins
	ros-indigo/kobuki_random_walker
	ros-indigo/kobuki_safety_controller
	ros-indigo/robot_state_publisher
	ros-indigo/yocs_cmd_vel_mux
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

