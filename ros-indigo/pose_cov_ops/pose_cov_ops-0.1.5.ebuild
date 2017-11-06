# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Library with C++ functions for SE\(2/3\) pose and 2D/3D point \
	composi[...]"
HOMEPAGE="http://wiki.ros.org/pose_cov_ops"
SRC_URI="https://github.com/mrpt-ros-pkg-release/pose_cov_ops-release/archive/release/indigo/pose_cov_ops/0.1.5-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/mrpt_bridge
	ros-indigo/roscpp
	sci-electronics/mrpt
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
