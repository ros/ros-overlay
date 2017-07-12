# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The sr_mechanism_controllers package contains different types of	 controller"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/shadow-robot/sr-ros-interface-release/archive/release/indigo/sr_mechanism_controllers/1.4.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/angles
	ros-indigo/control_msgs
	ros-indigo/control_toolbox
	ros-indigo/controller_interface
	ros-indigo/controller_manager_msgs
	ros-indigo/pluginlib
	ros-indigo/realtime_tools
	ros-indigo/ros_ethercat_model
	ros-indigo/rosconsole
	ros-indigo/roscpp
	ros-indigo/sr_hardware_interface
	ros-indigo/sr_robot_msgs
	ros-indigo/sr_utilities
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/velocity_controllers
	ros-indigo/xmlrpcpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/rostest
	dev-libs/tinyxml
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

