# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides a simple script to write simple launch files\
	tha[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/lunar/${PN}/2.8.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/nodelet
	ros-lunar/rosbash
	ros-lunar/roscpp
	ros-lunar/std_msgs
	test? ( ros-lunar/rosbash )
	test? ( ros-lunar/rostest )
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
