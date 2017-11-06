# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Framework for robot autonomy in Large Maps \(LaMa\), core functionalities"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/lama-imr/lama-release/archive/release/indigo/lama_core/0.1.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/lama_interfaces
	ros-indigo/lama_jockeys
	ros-indigo/lama_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
