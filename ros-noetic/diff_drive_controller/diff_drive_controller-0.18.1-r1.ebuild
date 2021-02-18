# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="Controller for a differential drive mobile base."
HOMEPAGE="https://github.com/ros-controls/ros_controllers/wiki"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/${PN}/0.18.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/control_msgs
	ros-noetic/controller_interface
	ros-noetic/dynamic_reconfigure
	ros-noetic/geometry_msgs
	ros-noetic/hardware_interface
	ros-noetic/nav_msgs
	ros-noetic/pluginlib
	ros-noetic/realtime_tools
	ros-noetic/tf
	ros-noetic/urdf
	test? ( ros-noetic/controller_manager )
	test? ( ros-noetic/rosgraph_msgs )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rostopic )
	test? ( ros-noetic/std_srvs )
	test? ( ros-noetic/xacro )
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
