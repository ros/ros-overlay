# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The leuze_ros_drivers metapackage"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa-led/${PN}-release/archive/release/kinetic/${PN}/1.0.0-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/leuze_bringup
	ros-kinetic/leuze_description
	ros-kinetic/leuze_msgs
	ros-kinetic/leuze_phidget_driver
	ros-kinetic/leuze_rsl_driver
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
