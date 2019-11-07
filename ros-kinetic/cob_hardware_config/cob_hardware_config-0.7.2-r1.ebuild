# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains configuration for each robot instance \(e.g. cob4-X, [...]"
HOMEPAGE="http://ros.org/wiki/cob_hardware_config"
SRC_URI="https://github.com/ipa320/cob_robots-release/archive/release/kinetic/${PN}/0.7.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_calibration_data
	ros-kinetic/cob_description
	ros-kinetic/cob_omni_drive_controller
	ros-kinetic/costmap_2d
	ros-kinetic/diagnostic_aggregator
	ros-kinetic/joint_state_controller
	ros-kinetic/joint_state_publisher
	ros-kinetic/joint_trajectory_controller
	ros-kinetic/laser_filters
	ros-kinetic/position_controllers
	ros-kinetic/raw_description
	ros-kinetic/robot_state_publisher
	ros-kinetic/roslaunch
	ros-kinetic/rostest
	ros-kinetic/rviz
	ros-kinetic/velocity_controllers
	ros-kinetic/xacro
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cob_supported_robots
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
