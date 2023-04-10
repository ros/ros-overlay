# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Package contains bringup scripts/config/tools for tra1 robto"
HOMEPAGE="http://ros.org/wiki/tra1_bringup"
SRC_URI="https://github.com/tork-a/minas-release/archive/release/melodic/${PN}/1.0.10-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-2.0-only"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/controller_manager
	ros-melodic/joint_state_controller
	ros-melodic/joint_trajectory_controller
	ros-melodic/minas_control
	ros-melodic/position_controllers
	ros-melodic/robot_state_publisher
	ros-melodic/tf
	ros-melodic/tra1_description
	ros-melodic/tra1_moveit_config
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
