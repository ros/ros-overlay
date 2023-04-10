# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Interface for using ROS with the <a href=\"http://gazebosim.org/\">Gazebo</[...]"
HOMEPAGE="http://gazebosim.org/tutorials?cat=connect_ros"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/3.7.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="( BSD LGPL Apache-2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/gazebo_dev
	ros-humble/gazebo_msgs
	ros-humble/gazebo_plugins
	ros-humble/gazebo_ros
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
