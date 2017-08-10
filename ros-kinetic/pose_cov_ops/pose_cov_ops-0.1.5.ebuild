# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Library with C++ functions for SE\(2/3\) pose and 2D/3D point \
	composi[...]"
HOMEPAGE="http://wiki.ros.org/pose_cov_ops"
SRC_URI="https://github.com/mrpt-ros-pkg-release/pose_cov_ops-release/archive/release/kinetic/pose_cov_ops/0.1.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/mrpt_bridge
	ros-kinetic/roscpp
	sci-electronics/mrpt
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

