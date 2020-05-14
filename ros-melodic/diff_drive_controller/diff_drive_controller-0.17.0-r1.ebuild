# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Controller for a differential drive mobile base."
HOMEPAGE="https://github.com/ros-controls/ros_controllers/wiki"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/${PN}/0.17.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/control_msgs
	ros-melodic/controller_interface
	ros-melodic/dynamic_reconfigure
	ros-melodic/nav_msgs
	ros-melodic/pluginlib
	ros-melodic/realtime_tools
	ros-melodic/tf
	ros-melodic/urdf
	test? ( ros-melodic/controller_manager )
	test? ( ros-melodic/rosgraph_msgs )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/std_srvs )
	test? ( ros-melodic/xacro )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
