# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Provides real-time manipulator Cartesian and joint servoing."
HOMEPAGE="https://ros-planning.github.io/moveit_tutorials"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/noetic/${PN}/1.1.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/control_msgs
	ros-noetic/control_toolbox
	ros-noetic/geometry_msgs
	ros-noetic/joy_teleop
	ros-noetic/moveit_msgs
	ros-noetic/moveit_ros_planning_interface
	ros-noetic/rosparam_shortcuts
	ros-noetic/sensor_msgs
	ros-noetic/spacenav_node
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/tf2_eigen
	ros-noetic/trajectory_msgs
	test? ( ros-noetic/moveit_resources_panda_moveit_config )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
