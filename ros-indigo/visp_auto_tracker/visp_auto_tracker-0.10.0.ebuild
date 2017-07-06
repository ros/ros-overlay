# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Online automated pattern-based object tracker relying on visual servoing.

	v'"
HOMEPAGE="http://wiki.ros.org/visp_auto_tracker"
SRC_URI="https://github.com/lagadic/vision_visp-release/archive/release/indigo/visp_auto_tracker/0.10.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/message_filters
	ros-indigo/resource_retriever
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/visp
	ros-indigo/visp_bridge
	ros-indigo/visp_tracker
	media-libs/libdmtx
	media-gfx/zbar
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

