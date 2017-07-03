# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="NONE"
HOMEPAGE="http://ros.org/wiki/katana_arm_gazebo"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/lunar/katana_arm_gazebo/1.1.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib
	ros-lunar/controller_manager
	ros-lunar/controller_manager_msgs
	ros-lunar/gazebo_ros
	ros-lunar/joint_trajectory_controller
	ros-lunar/katana_description
	ros-lunar/katana_gazebo_plugins
	ros-lunar/robot_state_publisher
	ros-lunar/roscpp
	ros-lunar/std_msgs
	ros-lunar/urdf
	ros-lunar/xacro
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

