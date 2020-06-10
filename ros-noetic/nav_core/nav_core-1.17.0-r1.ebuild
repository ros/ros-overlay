# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides common interfaces for navigation specific robot actio[...]"
HOMEPAGE="http://wiki.ros.org/nav_core"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/noetic/${PN}/1.17.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/costmap_2d
	ros-noetic/geometry_msgs
	ros-noetic/std_msgs
	ros-noetic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
