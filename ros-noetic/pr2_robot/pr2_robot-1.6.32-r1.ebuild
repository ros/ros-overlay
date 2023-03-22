# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This stack collects PR2-specific components that are used in bringing up\
 [...]"
HOMEPAGE="http://ros.org/wiki/pr2_robot"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/noetic/${PN}/1.6.32-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/imu_monitor
	ros-noetic/pr2_bringup
	ros-noetic/pr2_camera_synchronizer
	ros-noetic/pr2_computer_monitor
	ros-noetic/pr2_controller_configuration
	ros-noetic/pr2_ethercat
	ros-noetic/pr2_run_stop_auto_restart
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
