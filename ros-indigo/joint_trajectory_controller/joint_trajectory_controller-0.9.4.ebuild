# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Controller for executing joint-space trajectories on a group of joints.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/indigo/joint_trajectory_controller/0.9.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/angles
	ros-indigo/control_msgs
	ros-indigo/control_toolbox
	ros-indigo/controller_interface
	ros-indigo/controller_manager
	ros-indigo/hardware_interface
	ros-indigo/realtime_tools
	ros-indigo/roscpp
	ros-indigo/rostest
	ros-indigo/rqt_plot
	ros-indigo/trajectory_msgs
	ros-indigo/urdf
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

