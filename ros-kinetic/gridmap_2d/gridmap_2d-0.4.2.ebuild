# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="gridmap_2d - a simple 2D gridmap structure, based on OpenCV\'s cv::Mat"
HOMEPAGE="http://wiki.ros.org/gridmap_2d"
SRC_URI="https://github.com/ROBOTIS-GIT-release/humanoid_navigation-release/archive/release/kinetic/${PN}/0.4.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/nav_msgs
	ros-kinetic/rosconsole
	ros-kinetic/roscpp
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
