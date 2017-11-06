# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The ihmc_ros_common package provides common functionality for other IHMC RO[...]"
HOMEPAGE="http://github.com/ihmcrobotics/ihmc_ros_core"
SRC_URI="https://github.com/ihmcrobotics/ihmc_ros_core-release/archive/release/indigo/ihmc_ros_common/0.9.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
