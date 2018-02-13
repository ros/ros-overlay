# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package retrieves data from url-format files such as http://,\
   ftp:[...]"
HOMEPAGE="http://ros.org/wiki/resource_retriever"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/ardent/${PN}/2.0.2-2.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-ardent/ament_index_cpp
	ros-ardent/libcurl_vendor
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
