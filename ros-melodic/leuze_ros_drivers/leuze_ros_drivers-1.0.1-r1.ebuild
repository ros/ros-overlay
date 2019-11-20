# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The leuze_ros_drivers metapackage"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa-led/${PN}-release/archive/release/melodic/${PN}/1.0.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/leuze_bringup
	ros-melodic/leuze_description
	ros-melodic/leuze_msgs
	ros-melodic/leuze_phidget_driver
	ros-melodic/leuze_rsl_driver
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
