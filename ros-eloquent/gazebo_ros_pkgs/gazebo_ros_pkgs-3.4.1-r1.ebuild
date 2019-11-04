# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Interface for using ROS with the <a href=\"http://gazebosim.org/\">Gazebo</[...]"
HOMEPAGE="http://gazebosim.org/tutorials?cat=connect_ros"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/3.4.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="( BSD LGPL-2 Apache-2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/gazebo_dev
	ros-eloquent/gazebo_msgs
	ros-eloquent/gazebo_plugins
	ros-eloquent/gazebo_ros
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
