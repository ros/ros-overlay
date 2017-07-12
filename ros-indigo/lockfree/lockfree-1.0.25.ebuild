# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The lockfree package contains lockfree data structures for use in multithreaded"
HOMEPAGE="http://ros.org/wiki/lockfree"
SRC_URI="https://github.com/ros-gbp/ros_realtime-release/archive/release/indigo/lockfree/1.0.25-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/allocators
	ros-indigo/rosatomic
	ros-indigo/rosconsole
	ros-indigo/roslib
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

