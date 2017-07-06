# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Bring-up the nao_dcm driver to connect to Aldebaran'"'"'s Nao robot (v4).'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/nao_dcm_robot-release/archive/release/indigo/nao_dcm_bringup/0.0.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/nao_control
	ros-indigo/naoqi_dcm_driver
	ros-indigo/rospy
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

