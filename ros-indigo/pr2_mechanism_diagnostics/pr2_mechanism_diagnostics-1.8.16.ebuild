# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The pr2_mechanism_diagnostics node subscribes to mechanism_statistics and publis'"
HOMEPAGE="http://ros.org/wiki/pr2_mechanism_diagnostics"
SRC_URI="https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/indigo/pr2_mechanism_diagnostics/1.8.16-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/angles
	ros-indigo/diagnostic_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/pr2_mechanism_model
	ros-indigo/pr2_mechanism_msgs
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/urdf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

