# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="RViz plugin for displaying grid map messages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ethz-asl/grid_map-release/archive/release/indigo/${PN}/1.6.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/grid_map_msgs
	ros-indigo/grid_map_ros
	ros-indigo/rviz
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
