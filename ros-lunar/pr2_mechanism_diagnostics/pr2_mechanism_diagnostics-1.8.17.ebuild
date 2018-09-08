# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The \`pr2_mechanism_diagnostics\` node subscribes to \`mechanism_statistics[...]"
HOMEPAGE="http://ros.org/wiki/pr2_mechanism_diagnostics"
SRC_URI="https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/lunar/${PN}/1.8.17-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/angles
	ros-lunar/diagnostic_msgs
	ros-lunar/diagnostic_updater
	ros-lunar/pr2_mechanism_model
	ros-lunar/pr2_mechanism_msgs
	ros-lunar/roscpp
	ros-lunar/rospy
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	ros-lunar/urdf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/rostest
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
