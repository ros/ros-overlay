# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'soem_beckhoff_drivers contains drivers for the ethercat beckhoff modules to work'"
HOMEPAGE="http://wiki.ros.org/soem_master"
SRC_URI="https://github.com/orocos-gbp/rtt_soem-release/archive/release/indigo/soem_beckhoff_drivers/0.1.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/message_runtime
	ros-indigo/rtt
	ros-indigo/rtt_roscomm
	ros-indigo/soem
	ros-indigo/soem_master
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

