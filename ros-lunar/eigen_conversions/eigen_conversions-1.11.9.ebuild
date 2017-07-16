# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Conversion functions between:\
	  - Eigen and KDL\
	  - Eigen and geometry_m"
HOMEPAGE="http://ros.org/wiki/eigen_conversions"
SRC_URI="https://github.com/ros-gbp/geometry-release/archive/release/lunar/eigen_conversions/1.11.9-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/orocos_kdl
	ros-lunar/std_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

