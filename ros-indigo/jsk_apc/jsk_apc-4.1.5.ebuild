# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="p"
HOMEPAGE="http://wiki.ros.org/jsk_apc"
SRC_URI="https://github.com/tork-a/jsk_apc-release/archive/release/indigo/jsk_apc/4.1.5-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/jsk_2015_05_baxter_apc
	ros-indigo/jsk_2016_01_baxter_apc
	ros-indigo/jsk_apc2015_common
	ros-indigo/jsk_apc2016_common
	ros-indigo/jsk_arc2017_baxter
	ros-indigo/jsk_arc2017_common
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
