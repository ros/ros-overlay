# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Interface for using ROS with the <a href=\"http://gazebosim.org/\">Gazebo</[...]"
HOMEPAGE="http://gazebosim.org/tutorials?cat=connect_ros"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/crystal/${PN}/3.0.0-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="( BSD LGPL-2 Apache-2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/gazebo_dev
	ros-crystal/gazebo_msgs
	ros-crystal/gazebo_ros
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
