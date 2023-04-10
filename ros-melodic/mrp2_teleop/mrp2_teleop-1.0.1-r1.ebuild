# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Teleoperation and ros controls related launch files and configurations."
HOMEPAGE="http://wiki.ros.org/mrp2_teleop"
SRC_URI="https://github.com/milvusrobotics/mrp2_common-release/archive/release/melodic/${PN}/1.0.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/controller_manager
	ros-melodic/diff_drive_controller
	ros-melodic/interactive_marker_twist_server
	ros-melodic/joint_state_controller
	ros-melodic/joy
	ros-melodic/joy_teleop
	ros-melodic/robot_localization
	ros-melodic/robot_state_publisher
	ros-melodic/twist_mux
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
