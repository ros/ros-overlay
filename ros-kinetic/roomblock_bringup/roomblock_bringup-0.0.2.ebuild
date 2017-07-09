# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The roomblock_bringup package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/roomblock-release/archive/release/kinetic/roomblock_bringup/0.0.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/controller_manager
	ros-kinetic/create_node
	ros-kinetic/image_transport
	ros-kinetic/joy
	ros-kinetic/robot_pose_ekf
	ros-kinetic/robot_state_publisher
	ros-kinetic/roomblock_description
	ros-kinetic/rplidar_ros
	ros-kinetic/rviz
	ros-kinetic/teleop_twist_joy
	dev-python/pyserial
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

