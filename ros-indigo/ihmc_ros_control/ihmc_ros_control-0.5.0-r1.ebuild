# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides facilities for using IHMC Java software as\
	a ros[...]"
HOMEPAGE="https://github.org/ihmcrobotics/ihmc_ros_control"
SRC_URI="https://github.com/ihmcrobotics/ihmc-ros-control-release/archive/release/indigo/ihmc_ros_control/0.5.0-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_interface
	ros-indigo/effort_controllers
	ros-indigo/hardware_interface
	virtual/jdk
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
