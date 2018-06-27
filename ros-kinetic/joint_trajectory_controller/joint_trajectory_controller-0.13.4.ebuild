# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Controller for executing joint-space trajectories on a group of joints."
HOMEPAGE="https://github.com/ros-controls/ros_controllers/wiki"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/${PN}/0.13.4-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/angles
	ros-kinetic/control_msgs
	ros-kinetic/control_toolbox
	ros-kinetic/controller_interface
	ros-kinetic/hardware_interface
	ros-kinetic/realtime_tools
	ros-kinetic/roscpp
	ros-kinetic/trajectory_msgs
	ros-kinetic/urdf
	test? ( ros-kinetic/controller_manager )
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/xacro )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
