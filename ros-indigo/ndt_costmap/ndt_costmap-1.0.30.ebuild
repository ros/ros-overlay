# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The ndt_costmap package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tstoyanov/perception_oru-release/archive/release/indigo/ndt_costmap/1.0.30-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/ndt_map
	ros-indigo/ndt_visualisation
	ros-indigo/pcl_ros
	dev-cpp/eigen
	sci-libs/pcl
	virtual/opengl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
