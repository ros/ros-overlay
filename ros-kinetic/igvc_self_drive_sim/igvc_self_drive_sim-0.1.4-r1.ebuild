# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Metapackage for igvc_self_drive_sim"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/robustify/${PN}-release/archive/release/kinetic/${PN}/0.1.4-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/igvc_self_drive_description
	ros-kinetic/igvc_self_drive_gazebo
	ros-kinetic/igvc_self_drive_gazebo_plugins
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
