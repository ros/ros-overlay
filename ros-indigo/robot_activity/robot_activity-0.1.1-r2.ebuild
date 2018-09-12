# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The robot_activity package implements ROS node lifecycle"
HOMEPAGE="http://www.ros.org/wiki/robot_activity"
SRC_URI="https://github.com/snt-robotics/${PN}-release/archive/release/indigo/${PN}/0.1.1-2.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/robot_activity_msgs
	ros-indigo/roscpp
	ros-indigo/std_srvs
	test? ( ros-indigo/rostest )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslint
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
