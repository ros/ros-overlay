# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="gridmap_2d - a simple 2D gridmap structure, based on OpenCV\'s cv::Mat"
HOMEPAGE="http://ros.org/wiki/gridmap_2d"
SRC_URI="https://github.com/AravindaDP/humanoid_navigation-release/archive/release/indigo/gridmap_2d/0.4.1-2.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/nav_msgs
	ros-indigo/rosconsole
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
