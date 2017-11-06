# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ndt_map_builder"
HOMEPAGE="http://ros.org/wiki/ndt_map_builder"
SRC_URI="https://github.com/tstoyanov/perception_oru-release/archive/release/indigo/ndt_map_builder/1.0.30-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ndt_map
	ros-indigo/ndt_registration
	ros-indigo/pcl_conversions
	ros-indigo/pcl_ros
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
