# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="p"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_robot-release/archive/release/indigo/jsk_robot/1.1.0-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/baxtereus
	ros-indigo/fetcheus
	ros-indigo/jsk_201504_miraikan
	ros-indigo/jsk_baxter_desktop
	ros-indigo/jsk_baxter_startup
	ros-indigo/jsk_baxter_web
	ros-indigo/jsk_fetch_startup
	ros-indigo/jsk_nao_startup
	ros-indigo/jsk_pepper_startup
	ros-indigo/jsk_pr2_calibration
	ros-indigo/jsk_pr2_startup
	ros-indigo/jsk_robot_startup
	ros-indigo/jsk_robot_utils
	ros-indigo/naoeus
	ros-indigo/naoqieus
	ros-indigo/peppereus
	ros-indigo/pr2_base_trajectory_action
	ros-indigo/roseus_remote
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

