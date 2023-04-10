# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Interface for using ROS with the <a href=\"http://gazebosim.org/\">Gazebo</[...]"
HOMEPAGE="http://gazebosim.org/tutorials?cat=connect_ros"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/3.5.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="( BSD LGPL Apache-2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/gazebo_dev
	ros-foxy/gazebo_msgs
	ros-foxy/gazebo_plugins
	ros-foxy/gazebo_ros
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
