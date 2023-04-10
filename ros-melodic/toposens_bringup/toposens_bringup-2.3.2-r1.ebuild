# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/${PN}/2.3.2-1 -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/joint_state_publisher
	ros-melodic/robot_state_publisher
	ros-melodic/rqt_gui
	ros-melodic/rqt_reconfigure
	ros-melodic/rviz
	ros-melodic/socketcan_bridge
	ros-melodic/toposens_description
	ros-melodic/toposens_driver
	ros-melodic/toposens_echo_driver
	ros-melodic/toposens_markers
	ros-melodic/toposens_pointcloud
	ros-melodic/turtlebot3_bringup
	ros-melodic/turtlebot3_teleop
	ros-melodic/xacro
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
