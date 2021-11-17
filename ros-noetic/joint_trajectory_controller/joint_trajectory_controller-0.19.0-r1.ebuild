# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Controller for executing joint-space trajectories on a group of joints."
HOMEPAGE="https://github.com/ros-controls/ros_controllers/wiki"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/${PN}/0.19.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/angles
	ros-noetic/control_msgs
	ros-noetic/control_toolbox
	ros-noetic/controller_interface
	ros-noetic/hardware_interface
	ros-noetic/realtime_tools
	ros-noetic/roscpp
	ros-noetic/trajectory_msgs
	ros-noetic/urdf
	test? ( ros-noetic/code_coverage )
	test? ( ros-noetic/controller_manager )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/std_msgs )
	test? ( ros-noetic/xacro )
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/pluginlib
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
