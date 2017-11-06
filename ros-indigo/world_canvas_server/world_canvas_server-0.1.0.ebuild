# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Storage manager and server for WCF semantic maps."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/corot/world_canvas-release/archive/release/indigo/world_canvas_server/0.1.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/nav_msgs
	ros-indigo/rospy
	ros-indigo/rostest
	ros-indigo/visualization_msgs
	ros-indigo/warehouse_ros
	ros-indigo/world_canvas_msgs
	ros-indigo/world_canvas_utils
	dev-python/pymongo
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
