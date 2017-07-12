# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Java ROS message and service generators"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rosjava-release/genjava-release/archive/release/indigo/genjava/0.1.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/genmsg
	ros-indigo/rosjava_bootstrap
	ros-indigo/rosjava_build_tools
	dev-python/catkin_pkg
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

