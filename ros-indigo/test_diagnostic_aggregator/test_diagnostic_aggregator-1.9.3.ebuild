# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Basic diagnostic_aggregator tests are  in the"
HOMEPAGE="http://ros.org/wiki/test_diagnostic_aggregator"
SRC_URI="https://github.com/ros-gbp/diagnostics-release/archive/release/indigo/${PN}/1.9.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_aggregator
	ros-indigo/diagnostic_msgs
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/rospy
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
