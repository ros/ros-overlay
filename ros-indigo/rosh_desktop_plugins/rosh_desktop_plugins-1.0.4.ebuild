# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROSH plugins related to the desktop variant."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/OSUrobotics/rosh_desktop_plugins-release/archive/release/indigo/rosh_desktop_plugins/1.0.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosh_desktop
	ros-indigo/rosh_visualization
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
