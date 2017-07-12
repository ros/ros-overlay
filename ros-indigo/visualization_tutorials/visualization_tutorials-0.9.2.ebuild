# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Metapackage referencing tutorials related to rviz and visualization"
HOMEPAGE="http://ros.org/wiki/visualization_tutorials"
SRC_URI="https://github.com/ros-gbp/visualization_tutorials-release/archive/release/indigo/visualization_tutorials/0.9.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/interactive_marker_tutorials
	ros-indigo/librviz_tutorial
	ros-indigo/rviz_plugin_tutorials
	ros-indigo/rviz_python_tutorial
	ros-indigo/visualization_marker_tutorials
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

