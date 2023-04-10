# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="CMake Functions and Modules for automating CMake"
HOMEPAGE="http://wiki.ros.org/mrt_cmake_modules"
SRC_URI="https://github.com/KIT-MRT/${PN}-release/archive/release/foxy/${PN}/1.0.9-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_core
	ros-foxy/ros_environment
	dev-python/catkin_pkg
	dev-python/rospkg
	dev-python/setuptools
	dev-python/pyyaml
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
