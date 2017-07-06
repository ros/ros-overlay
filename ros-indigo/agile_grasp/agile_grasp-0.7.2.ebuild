# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The agile_grasp ROS package. AGILE stands for Antipodal Grasp Identification and'"
HOMEPAGE="http://wiki.ros.org/agile_grasp"
SRC_URI="https://github.com/atenpas/agile_grasp-release/archive/release/indigo/agile_grasp/0.7.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cmake_modules
	ros-indigo/cv_bridge
	ros-indigo/eigen_conversions
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/pcl_conversions
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/visualization_msgs
	virtual/lapack
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

