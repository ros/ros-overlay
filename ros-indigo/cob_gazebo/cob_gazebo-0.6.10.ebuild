# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch files and tools for 3D simulation of Care-O-bot in gazebo simulator."
HOMEPAGE="http://ros.org/wiki/cob_gazebo"
SRC_URI="https://github.com/ipa320/cob_simulation-release/archive/release/indigo/${PN}/0.6.10-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/cob_bringup
	ros-indigo/cob_default_robot_config
	ros-indigo/cob_gazebo_ros_control
	ros-indigo/cob_hardware_config
	ros-indigo/cob_script_server
	ros-indigo/control_msgs
	ros-indigo/gazebo_plugins
	ros-indigo/gazebo_ros
	ros-indigo/gazebo_ros_control
	ros-indigo/roslaunch
	ros-indigo/rospy
	ros-indigo/rostest
	ros-indigo/trajectory_msgs
	test? ( ros-indigo/cob_supported_robots )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
