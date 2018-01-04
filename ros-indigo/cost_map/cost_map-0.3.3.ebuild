# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Meta-package for the universal cost map library."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/indigo/${PN}/0.3.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cost_map_core
	ros-indigo/cost_map_msgs
	ros-indigo/cost_map_ros
	ros-indigo/cost_map_visualisations
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
