# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ff: pddl planner. see http://www.loria.fr/~hoffmanj/ff.html"
HOMEPAGE=""
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/lunar/${PN}/2.1.11-2.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/mk
	ros-lunar/rosbash
	ros-lunar/rosbuild
	ros-lunar/roslib
	ros-lunar/rospack
	sys-devel/bison
	app-misc/ca-certificates
	sys-devel/flex
	dev-libs/openssl
	app-arch/unzip
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
