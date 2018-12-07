# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This package retrieves data from url-format files such as http://,\
   ftp:[...]"
HOMEPAGE="http://ros.org/wiki/resource_retriever"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/crystal/${PN}/2.1.0-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/ament_index_cpp
	ros-crystal/libcurl_vendor
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
