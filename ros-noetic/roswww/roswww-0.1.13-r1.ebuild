# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Feathery lightweight web server for ROS, that is based on <a href=\"http://[...]"
HOMEPAGE="http://wiki.ros.org/roswww"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.1.13-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/rosbridge_server
	ros-noetic/rosgraph
	ros-noetic/rospack
	test? ( ros-noetic/rostest )
	test? ( dev-python/selenium )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
