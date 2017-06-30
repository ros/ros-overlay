# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="Python implementation of the URDF parser."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/urdfdom_py-release/archive/release/lunar/urdfdom_py/0.3.3-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/catkin
	dev-lang/python
	dev-python/lxml
"
DEPEND="${RDEPEND}
	dev-python/catkin_pkg
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

