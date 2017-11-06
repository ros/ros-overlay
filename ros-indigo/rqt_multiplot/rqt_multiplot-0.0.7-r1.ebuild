# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="rqt_multiplot provides a GUI plugin for visualizing numeric values	in multip"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ethz-asl/rqt_multiplot_plugin-release/archive/release/indigo/rqt_multiplot/0.0.7-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosbag
	ros-indigo/roscpp
	ros-indigo/rqt_gui
	ros-indigo/rqt_gui_cpp
	ros-indigo/variant_topic_tools
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	x11-libs/qwt:6
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

