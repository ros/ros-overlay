# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Clearpath Husky robot driver"
HOMEPAGE="http://ros.org/wiki/husky_base"
SRC_URI="https://github.com/clearpath-gbp/husky-release/archive/release/melodic/${PN}/0.4.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/controller_manager
	ros-melodic/diagnostic_aggregator
	ros-melodic/diagnostic_msgs
	ros-melodic/diagnostic_updater
	ros-melodic/diff_drive_controller
	ros-melodic/geometry_msgs
	ros-melodic/hardware_interface
	ros-melodic/husky_control
	ros-melodic/husky_description
	ros-melodic/husky_msgs
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/topic_tools
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
	ros-melodic/roslint
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
