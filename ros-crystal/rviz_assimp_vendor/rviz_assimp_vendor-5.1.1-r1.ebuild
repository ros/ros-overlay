# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Wrapper around assimp, providing nothing but a dependency on assimp, on som[...]"
HOMEPAGE="http://assimp.sourceforge.net/index.html"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/crystal/${PN}/5.1.1-1.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	media-libs/assimp
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
