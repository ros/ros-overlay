# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="Mesh Conversion Utility

Used to generate '.iv' files from '.stl' files.  This p"
HOMEPAGE="https://sourceforge.net/projects/ivcon/"
SRC_URI="https://github.com/ros-gbp/ivcon-release/archive/release/lunar/ivcon/0.1.6-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

