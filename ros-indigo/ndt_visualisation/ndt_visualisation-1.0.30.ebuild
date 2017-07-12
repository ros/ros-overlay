# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Contains classes for creating an ndt visualization window Initial implementatio"
HOMEPAGE="http://ros.org/wiki/ndt_visualization"
SRC_URI="https://github.com/tstoyanov/perception_oru-release/archive/release/indigo/ndt_visualisation/1.0.30-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/message_runtime
	ros-indigo/ndt_map
	ros-indigo/pcl_ros
	media-libs/freeglut
	sci-libs/pcl
	virtual/opengl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	x11-libs/libXi
	x11-libs/libXmu
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

