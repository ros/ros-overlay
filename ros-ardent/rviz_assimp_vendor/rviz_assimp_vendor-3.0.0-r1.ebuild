# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Wrapper around assimp, providing nothing but a dependency on assimp, on som[...]"
HOMEPAGE="http://assimp.sourceforge.net/index.html"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/ardent/${PN}/3.0.0-1.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	media-libs/assimp
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
