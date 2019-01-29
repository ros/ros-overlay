# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Yujin Robot\'s open-source control software"
HOMEPAGE="http://ros.org/wiki/yujin_ocs"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/melodic/${PN}/0.8.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/yocs_cmd_vel_mux
	ros-melodic/yocs_controllers
	ros-melodic/yocs_diff_drive_pose_controller
	ros-melodic/yocs_joyop
	ros-melodic/yocs_keyop
	ros-melodic/yocs_math_toolkit
	ros-melodic/yocs_rapps
	ros-melodic/yocs_safety_controller
	ros-melodic/yocs_velocity_smoother
	ros-melodic/yocs_virtual_sensor
	ros-melodic/yocs_waypoints_navi
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
