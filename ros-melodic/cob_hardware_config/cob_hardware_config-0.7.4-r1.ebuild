# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains configuration for each robot instance \(e.g. cob4-X, [...]"
HOMEPAGE="http://ros.org/wiki/cob_hardware_config"
SRC_URI="https://github.com/ipa320/cob_robots-release/archive/release/melodic/${PN}/0.7.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/cob_calibration_data
	ros-melodic/cob_description
	ros-melodic/cob_omni_drive_controller
	ros-melodic/costmap_2d
	ros-melodic/diagnostic_aggregator
	ros-melodic/joint_state_controller
	ros-melodic/joint_state_publisher
	ros-melodic/joint_state_publisher_gui
	ros-melodic/joint_trajectory_controller
	ros-melodic/laser_filters
	ros-melodic/position_controllers
	ros-melodic/raw_description
	ros-melodic/robot_state_publisher
	ros-melodic/rviz
	ros-melodic/velocity_controllers
	ros-melodic/xacro
	test? ( ros-melodic/cob_supported_robots )
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
