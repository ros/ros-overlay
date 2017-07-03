# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="This package contains an URDF description of the Katana arm and all supporting m"
HOMEPAGE="http://ros.org/wiki/katana_description"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/lunar/katana_description/1.1.2-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/transmission_interface
	ros-lunar/urdf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/convex_decomposition
	ros-lunar/ivcon
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

