# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Launch files and tools for 3D simulation of Care-O-bot in gazebo simulator."
HOMEPAGE="http://ros.org/wiki/cob_gazebo"
SRC_URI="https://github.com/ipa320/cob_simulation-release/archive/release/noetic/${PN}/0.7.8-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cob_bringup
	ros-noetic/cob_default_robot_config
	ros-noetic/cob_gazebo_ros_control
	ros-noetic/cob_hardware_config
	ros-noetic/cob_script_server
	ros-noetic/control_msgs
	ros-noetic/gazebo_plugins
	ros-noetic/gazebo_ros
	ros-noetic/gazebo_ros_control
	ros-noetic/rospy
	ros-noetic/rostest
	ros-noetic/trajectory_msgs
	test? ( ros-noetic/cob_supported_robots )
	test? ( ros-noetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
