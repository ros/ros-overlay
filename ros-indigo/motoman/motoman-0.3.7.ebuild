# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The motoman stack constains libraries, configuration files, and ROS nodes for co'"
HOMEPAGE="http://ros.org/wiki/motoman"
SRC_URI="https://github.com/ros-industrial-release/motoman-release/archive/release/indigo/motoman/0.3.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/motoman_driver
	ros-indigo/motoman_mh5_support
	ros-indigo/motoman_sia10d_support
	ros-indigo/motoman_sia20d_moveit_config
	ros-indigo/motoman_sia20d_support
	ros-indigo/motoman_sia5d_support
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

