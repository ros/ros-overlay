# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="3D models of the Thormang3 for simulation and visualization"
HOMEPAGE="http://wiki.ros.org/thormang3_description"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-Common-release/archive/release/kinetic/${PN}/0.2.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/joint_state_publisher
	ros-kinetic/robot_state_publisher
	ros-kinetic/roscpp
	ros-kinetic/rviz
	ros-kinetic/sensor_msgs
	ros-kinetic/urg_node
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
