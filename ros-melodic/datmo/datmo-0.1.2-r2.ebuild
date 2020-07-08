# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The LIDAR Detection and Tracking of Moving Objects package"
HOMEPAGE="https://github.com/kostaskonkk/datmo"
SRC_URI="https://github.com/kostaskonkk/${PN}-release/archive/release/melodic/${PN}/0.1.2-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( BSD MIT )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/message_runtime
	ros-melodic/roscpp
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	ros-melodic/message_generation
	ros-melodic/nav_msgs
	ros-melodic/sensor_msgs
	ros-melodic/tf
	ros-melodic/tf2_geometry_msgs
	ros-melodic/visualization_msgs
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
