# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Standalone QT-based IMU/GPS decoder nodes for Witmotion UART-compatible sen[...]"
HOMEPAGE="https://wiki.ros.org/witmotion_ros"
SRC_URI="https://github.com/twdragon/${PN}-release/archive/release/melodic/${PN}/1.2.27-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/nav_core
	ros-melodic/nav_msgs
	ros-melodic/roscpp
	ros-melodic/rosgraph_msgs
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf2
	ros-melodic/tf2_geometry_msgs
	dev-qt/qtserialport:5
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
