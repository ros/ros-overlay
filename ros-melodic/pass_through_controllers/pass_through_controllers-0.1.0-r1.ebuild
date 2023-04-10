# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Trajectory controllers \(joint-based and Cartesian\) that forward trajector[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/UniversalRobots/Universal_Robots_ROS_passthrough_controllers-release/archive/release/melodic/${PN}/0.1.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/cartesian_control_msgs
	ros-melodic/cartesian_interface
	ros-melodic/controller_interface
	ros-melodic/controller_manager
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/hardware_interface
	ros-melodic/roscpp
	ros-melodic/speed_scaling_interface
	ros-melodic/trajectory_msgs
	test? ( ros-melodic/actionlib )
	test? ( ros-melodic/actionlib_msgs )
	test? ( ros-melodic/cartesian_trajectory_controller )
	test? ( ros-melodic/control_msgs )
	test? ( ros-melodic/controller_manager_msgs )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/xacro )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
