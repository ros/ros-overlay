# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains configuration for each robot instance \(e.g. cob4-X, [...]"
HOMEPAGE="http://ros.org/wiki/cob_hardware_config"
SRC_URI="https://github.com/ipa320/cob_robots-release/archive/release/indigo/cob_hardware_config/0.6.7-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_calibration_data
	ros-indigo/cob_description
	ros-indigo/cob_omni_drive_controller
	ros-indigo/diagnostic_aggregator
	ros-indigo/joint_state_controller
	ros-indigo/joint_trajectory_controller
	ros-indigo/position_controllers
	ros-indigo/raw_description
	ros-indigo/roslaunch
	ros-indigo/rostest
	ros-indigo/schunk_description
	ros-indigo/ur_description
	ros-indigo/velocity_controllers
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cob_supported_robots
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
