# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Controller for a differential drive mobile base."
HOMEPAGE="https://github.com/ros-controls/ros_controllers/wiki"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/${PN}/0.13.6-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/controller_interface
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/nav_msgs
	ros-kinetic/realtime_tools
	ros-kinetic/tf
	ros-kinetic/urdf
	test? ( ros-kinetic/controller_manager )
	test? ( ros-kinetic/rosgraph_msgs )
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/std_srvs )
	test? ( ros-kinetic/xacro )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
