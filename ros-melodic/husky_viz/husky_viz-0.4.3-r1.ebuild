# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Visualization configuration for Clearpath Husky"
HOMEPAGE="http://ros.org/wiki/husky_viz"
SRC_URI="https://github.com/clearpath-gbp/husky-release/archive/release/melodic/${PN}/0.4.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/husky_description
	ros-melodic/joint_state_publisher
	ros-melodic/joint_state_publisher_gui
	ros-melodic/robot_state_publisher
	ros-melodic/rviz
	ros-melodic/rviz_imu_plugin
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
