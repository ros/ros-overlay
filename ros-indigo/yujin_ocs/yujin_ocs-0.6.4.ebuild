# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Yujin Robot\'s open-source control software"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/indigo/yujin_ocs/0.6.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/yocs_cmd_vel_mux
	ros-indigo/yocs_controllers
	ros-indigo/yocs_diff_drive_pose_controller
	ros-indigo/yocs_joyop
	ros-indigo/yocs_keyop
	ros-indigo/yocs_math_toolkit
	ros-indigo/yocs_rapps
	ros-indigo/yocs_safety_controller
	ros-indigo/yocs_velocity_smoother
	ros-indigo/yocs_virtual_sensor
	ros-indigo/yocs_waypoints_navi
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
