# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="The gripper_action_controller package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/lunar/gripper_action_controller/0.12.3-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/actionlib
	ros-lunar/angles
	ros-lunar/cmake_modules
	ros-lunar/control_msgs
	ros-lunar/control_toolbox
	ros-lunar/controller_interface
	ros-lunar/controller_manager
	ros-lunar/hardware_interface
	ros-lunar/realtime_tools
	ros-lunar/roscpp
	ros-lunar/trajectory_msgs
	ros-lunar/urdf
	ros-lunar/xacro
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

