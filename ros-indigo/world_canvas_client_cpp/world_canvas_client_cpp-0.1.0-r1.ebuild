# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="C++ client library to access semantic maps within the world canvas framework."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/corot/world_canvas_libs-release/archive/release/indigo/world_canvas_client_cpp/0.1.0-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/roscpp
	ros-indigo/unique_id
	ros-indigo/uuid_msgs
	ros-indigo/visualization_msgs
	ros-indigo/world_canvas_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
