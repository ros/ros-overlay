# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides real-time manipulator Cartesian and joint servoing."
HOMEPAGE="https://ros-planning.github.io/moveit_tutorials"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/melodic/${PN}/1.0.11-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/control_msgs
	ros-melodic/control_toolbox
	ros-melodic/geometry_msgs
	ros-melodic/joy_teleop
	ros-melodic/moveit_msgs
	ros-melodic/moveit_ros_planning_interface
	ros-melodic/rosparam_shortcuts
	ros-melodic/sensor_msgs
	ros-melodic/spacenav_node
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf2_eigen
	ros-melodic/trajectory_msgs
	test? ( ros-melodic/moveit_resources_panda_moveit_config )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
