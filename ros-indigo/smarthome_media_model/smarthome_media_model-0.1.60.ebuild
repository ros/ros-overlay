# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package is Media model for RosJava"
HOMEPAGE="https://support.tactfactory.com/projects/medialfred/wiki/Wiki"
SRC_URI="https://github.com/rosalfred-release/smarthome_media_model-release/archive/release/indigo/smarthome_media_model/0.1.60-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rosjava_build_tools
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

