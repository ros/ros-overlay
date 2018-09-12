# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The \`pr2_mechanism_diagnostics\` node subscribes to \`mechanism_statistics[...]"
HOMEPAGE="http://ros.org/wiki/pr2_mechanism_diagnostics"
SRC_URI="https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/melodic/${PN}/1.8.18-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/angles
	ros-melodic/diagnostic_msgs
	ros-melodic/diagnostic_updater
	ros-melodic/pr2_mechanism_model
	ros-melodic/pr2_mechanism_msgs
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/urdf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
