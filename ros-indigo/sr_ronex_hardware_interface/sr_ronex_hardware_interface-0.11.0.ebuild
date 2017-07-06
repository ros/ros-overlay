# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'This package contains the definition of the CustomHW to be
	added to the ros_'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/shadow-robot/sr-ronex-release/archive/release/indigo/sr_ronex_hardware_interface/0.11.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ros_ethercat_hardware
	ros-indigo/ros_ethercat_model
	ros-indigo/roscpp
	ros-indigo/sr_ronex_external_protocol
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

