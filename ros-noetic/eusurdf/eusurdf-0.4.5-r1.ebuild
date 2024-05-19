# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="urdf models converted from euslisp"
HOMEPAGE="http://ros.org/wiki/eusurdf"
SRC_URI="https://github.com/tork-a/jsk_model_tools-release/archive/release/noetic/${PN}/0.4.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/collada_urdf_jsk_patch
	ros-noetic/gazebo_ros
	ros-noetic/rostest
	dev-python/lxml
	dev-python/lxml
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roseus
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
