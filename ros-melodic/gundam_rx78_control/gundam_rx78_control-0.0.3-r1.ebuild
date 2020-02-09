# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="gundam_rx78_control contains launch and configuration scripts for the ros c[...]"
HOMEPAGE="http://wiki.ros.org/gundam_rx78_control"
SRC_URI="https://github.com/gundam-global-challenge/gundam_robot-release/archive/release/melodic/${PN}/0.0.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/controller_interface
	ros-melodic/controller_manager
	ros-melodic/joint_trajectory_controller
	ros-melodic/pluginlib
	ros-melodic/robot_state_publisher
	ros-melodic/ros_control
	ros-melodic/ros_controllers
	test? ( ros-melodic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslint
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
