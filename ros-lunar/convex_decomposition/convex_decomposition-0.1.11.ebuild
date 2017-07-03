# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="Convex Decomposition Tool for Robot Model"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/convex_decomposition-release/archive/release/lunar/convex_decomposition/0.1.11-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	app-arch/unzip
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

