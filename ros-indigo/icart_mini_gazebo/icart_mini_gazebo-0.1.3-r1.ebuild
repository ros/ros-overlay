# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The icart_mini_gazebo package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/open-rdc/icart_mini-release/archive/release/indigo/icart_mini_gazebo/0.1.3-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_manager
	ros-indigo/gazebo_plugins
	ros-indigo/gazebo_ros
	ros-indigo/gazebo_ros_control
	ros-indigo/hardware_interface
	ros-indigo/joint_limits_interface
	ros-indigo/pluginlib
	ros-indigo/robot_state_publisher
	ros-indigo/roscpp
	ros-indigo/transmission_interface
	ros-indigo/urdf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

