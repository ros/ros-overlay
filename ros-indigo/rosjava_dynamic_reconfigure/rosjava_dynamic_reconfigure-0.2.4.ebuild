# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The rosjava_dynamic_reconfigure package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rosalfred-release/rosjava_dynamic_reconfigure-release/archive/release/indigo/rosjava_dynamic_reconfigure/0.2.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="Apache-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamic_reconfigure
	ros-indigo/rosjava_core
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rosjava_build_tools
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

