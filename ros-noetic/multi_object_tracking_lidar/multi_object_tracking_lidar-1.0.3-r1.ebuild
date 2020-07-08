# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS package for Multiple objects detection, tracking and classification fro[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/praveen-palanisamy/${PN}-release/archive/release/noetic/${PN}/1.0.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/pcl_ros
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/visualization_msgs
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
