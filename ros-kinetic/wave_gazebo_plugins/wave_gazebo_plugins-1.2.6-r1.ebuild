# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains Gazebo plugins for the simulation of \
	water surf[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/vrx-release/archive/release/kinetic/${PN}/1.2.6-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="TBD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/gazebo_ros
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
