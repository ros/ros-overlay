# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="tta#text"
HOMEPAGE="http://wiki.ros.org/map_server"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/lunar/map_server/1.15.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/nav_msgs
	ros-lunar/roscpp
	ros-lunar/tf2
	sci-physics/bullet
	media-libs/libsdl
	media-libs/sdl-image
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

