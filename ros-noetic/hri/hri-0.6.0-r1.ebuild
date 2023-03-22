# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A wrapper library around the ROS4HRI ROS topics"
HOMEPAGE="http://wiki.ros.org/hri"
SRC_URI="https://github.com/ros4${PN}/lib${PN}-release/archive/release/noetic/${PN}/0.6.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/geometry_msgs
	ros-noetic/hri_msgs
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf2
	ros-noetic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-libs/boost[python]
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
