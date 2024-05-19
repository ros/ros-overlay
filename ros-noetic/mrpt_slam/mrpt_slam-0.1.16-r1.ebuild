# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="mrpt_slam"
HOMEPAGE="http://ros.org/wiki/mrpt_slam"
SRC_URI="https://github.com/mrpt-ros-pkg-release/${PN}-release/archive/release/noetic/${PN}/0.1.16-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/mrpt_ekf_slam_2d
	ros-noetic/mrpt_ekf_slam_3d
	ros-noetic/mrpt_graphslam_2d
	ros-noetic/mrpt_icp_slam_2d
	ros-noetic/mrpt_rbpf_slam
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
