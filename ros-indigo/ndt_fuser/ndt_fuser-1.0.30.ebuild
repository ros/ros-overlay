# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ndt_fuser"
HOMEPAGE="http://ros.org/wiki/ndt_fuser"
SRC_URI="https://github.com/tstoyanov/perception_oru-release/archive/release/indigo/ndt_fuser/1.0.30-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/laser_geometry
	ros-indigo/message_runtime
	ros-indigo/ndt_map
	ros-indigo/ndt_registration
	ros-indigo/ndt_visualisation
	ros-indigo/sensor_msgs
	ros-indigo/std_srvs
	ros-indigo/visualization_msgs
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
