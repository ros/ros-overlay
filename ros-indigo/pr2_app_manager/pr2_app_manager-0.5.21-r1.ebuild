# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Scripts and tools for running the application manager on the PR2.'"
HOMEPAGE="http://ros.org/wiki/application_manager"
SRC_URI="https://github.com/pr2-gbp/pr2_apps-release/archive/release/indigo/pr2_app_manager/0.5.21-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/app_manager
	ros-indigo/willow_maps
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

