# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This stack collects PR2-specific components that are used in bringing up\
 [...]"
HOMEPAGE="http://ros.org/wiki/pr2_robot"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/kinetic/${PN}/1.6.28-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/imu_monitor
	ros-kinetic/pr2_bringup
	ros-kinetic/pr2_camera_synchronizer
	ros-kinetic/pr2_computer_monitor
	ros-kinetic/pr2_controller_configuration
	ros-kinetic/pr2_ethercat
	ros-kinetic/pr2_run_stop_auto_restart
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
