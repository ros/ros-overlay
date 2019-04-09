# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The lockfree package contains lock-free data structures for use in multithr[...]"
HOMEPAGE="http://ros.org/wiki/lockfree"
SRC_URI="https://github.com/ros-gbp/ros_realtime-release/archive/release/melodic/${PN}/1.0.25-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/allocators
	ros-melodic/rosatomic
	ros-melodic/rosconsole
	ros-melodic/roslib
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
