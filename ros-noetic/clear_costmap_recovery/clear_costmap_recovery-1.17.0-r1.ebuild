# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides a recovery behavior for the navigation stack that att[...]"
HOMEPAGE="http://wiki.ros.org/clear_costmap_recovery"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/noetic/${PN}/1.17.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/costmap_2d
	ros-noetic/nav_core
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/tf2_ros
	test? ( ros-noetic/rostest )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
