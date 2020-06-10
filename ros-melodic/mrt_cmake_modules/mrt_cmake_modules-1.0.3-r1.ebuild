# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="CMake Functions and Modules for automating CMake"
HOMEPAGE="http://wiki.ros.org/mrt_cmake_modules"
SRC_URI="https://github.com/KIT-MRT/${PN}-release/archive/release/melodic/${PN}/1.0.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-python/rospkg
	dev-python/setuptools
	dev-python/pyyaml
	dev-python/rospkg
	dev-python/setuptools
	dev-python/pyyaml
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
