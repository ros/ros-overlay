# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch files and tools for 3D simulation of Care-O-bot in gazebo simulator."
HOMEPAGE="http://ros.org/wiki/cob_gazebo"
SRC_URI="https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/${PN}/0.7.3-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/cob_bringup
	ros-kinetic/cob_default_robot_config
	ros-kinetic/cob_gazebo_ros_control
	ros-kinetic/cob_hardware_config
	ros-kinetic/cob_script_server
	ros-kinetic/control_msgs
	ros-kinetic/gazebo_plugins
	ros-kinetic/gazebo_ros
	ros-kinetic/gazebo_ros_control
	ros-kinetic/roslaunch
	ros-kinetic/rospy
	ros-kinetic/rostest
	ros-kinetic/trajectory_msgs
	test? ( ros-kinetic/cob_supported_robots )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
