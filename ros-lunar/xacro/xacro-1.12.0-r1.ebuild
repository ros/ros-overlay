# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="Xacro (XML Macros)

	Xacro is an XML macro language. With xacro, you can cons"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/xacro-release/archive/release/lunar/xacro/1.12.0-1.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/roslaunch
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/roslint
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

