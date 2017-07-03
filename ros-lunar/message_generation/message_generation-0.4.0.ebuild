# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="Package modeling the build-time dependencies for generating language bindings of"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/message_generation-release/archive/release/lunar/message_generation/0.4.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/gencpp
	ros-lunar/geneus
	ros-lunar/genlisp
	ros-lunar/genmsg
	ros-lunar/gennodejs
	ros-lunar/genpy
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

