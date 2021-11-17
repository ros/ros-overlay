# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package contains configuration for each robot instance \(e.g. cob4-X, [...]"
HOMEPAGE="http://ros.org/wiki/cob_hardware_config"
SRC_URI="https://github.com/ipa320/cob_robots-release/archive/release/noetic/${PN}/0.7.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cob_calibration_data
	ros-noetic/cob_description
	ros-noetic/cob_omni_drive_controller
	ros-noetic/costmap_2d
	ros-noetic/diagnostic_aggregator
	ros-noetic/joint_state_controller
	ros-noetic/joint_state_publisher
	ros-noetic/joint_state_publisher_gui
	ros-noetic/joint_trajectory_controller
	ros-noetic/laser_filters
	ros-noetic/position_controllers
	ros-noetic/raw_description
	ros-noetic/robot_state_publisher
	ros-noetic/rviz
	ros-noetic/velocity_controllers
	ros-noetic/xacro
	test? ( ros-noetic/cob_supported_robots )
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
