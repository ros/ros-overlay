# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch files and configurations for starting MRP2 robot in a real environment."
HOMEPAGE="http://wiki.ros.org/mrp2_bringup"
SRC_URI="https://github.com/milvusrobotics/mrp2_robot-release/archive/release/melodic/${PN}/0.2.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/joy
	ros-melodic/joy_teleop
	ros-melodic/mrp2_description
	ros-melodic/robot_state_publisher
	ros-melodic/twist_mux
	ros-melodic/urg_node
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
