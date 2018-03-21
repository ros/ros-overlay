# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This stack collects PR2-specific components that are used in bringing up\
 [...]"
HOMEPAGE="http://ros.org/wiki/pr2_robot"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/indigo/${PN}/1.6.26-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/imu_monitor
	ros-indigo/pr2_bringup
	ros-indigo/pr2_camera_synchronizer
	ros-indigo/pr2_computer_monitor
	ros-indigo/pr2_controller_configuration
	ros-indigo/pr2_ethercat
	ros-indigo/pr2_run_stop_auto_restart
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
