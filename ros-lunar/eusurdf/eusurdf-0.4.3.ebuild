# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="urdf models converted from euslisp"
HOMEPAGE="http://ros.org/wiki/eusurdf"
SRC_URI="https://github.com/tork-a/jsk_model_tools-release/archive/release/lunar/${PN}/0.4.3-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/collada_urdf_jsk_patch
	ros-lunar/gazebo_ros
	ros-lunar/rostest
	dev-python/lxml
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/roseus
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
