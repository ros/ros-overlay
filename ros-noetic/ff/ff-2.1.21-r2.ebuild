# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="ff: pddl planner. see http://www.loria.fr/~hoffmanj/ff.html"
HOMEPAGE="http://ros.org/wiki/ff"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/${PN}/2.1.21-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/mk
	ros-noetic/rosbash
	ros-noetic/rosbuild
	ros-noetic/roslib
	ros-noetic/rospack
	sys-devel/bison
	app-misc/ca-certificates
	sys-devel/flex
	dev-libs/openssl
	app-arch/unzip
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
