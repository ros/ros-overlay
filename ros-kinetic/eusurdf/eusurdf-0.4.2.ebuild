# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="urdf models converted from euslisp"
HOMEPAGE="http://ros.org/wiki/eusurdf"
SRC_URI="https://github.com/tork-a/jsk_model_tools-release/archive/release/kinetic/${PN}/0.4.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/collada_urdf
	ros-kinetic/gazebo_ros
	ros-kinetic/rostest
	dev-python/lxml
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roseus
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
