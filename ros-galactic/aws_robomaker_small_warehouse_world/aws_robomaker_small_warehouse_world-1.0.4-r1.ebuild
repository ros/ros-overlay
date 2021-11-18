# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="AWS RoboMaker package for a warehouse world to use in manufacturing and log[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/aws-gbp/${PN}-release/archive/release/galactic/${PN}/1.0.4-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/gazebo_plugins
	ros-galactic/gazebo_ros
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
