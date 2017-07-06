# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The roomblock_bringup package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/roomblock-release/archive/release/indigo/roomblock_bringup/0.0.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_manager
	ros-indigo/create_node
	ros-indigo/image_transport
	ros-indigo/joy
	ros-indigo/robot_pose_ekf
	ros-indigo/robot_state_publisher
	ros-indigo/roomblock_description
	ros-indigo/rplidar_ros
	ros-indigo/rviz
	ros-indigo/teleop_twist_joy
	dev-python/pyserial
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

