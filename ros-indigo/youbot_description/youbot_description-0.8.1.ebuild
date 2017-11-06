# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Robot descriptions in form of URDF files and meshes"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/youbot-release/youbot_description-release/archive/release/indigo/youbot_description/0.8.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
