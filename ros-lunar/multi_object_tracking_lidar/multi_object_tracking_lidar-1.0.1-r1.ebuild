# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS package for Multiple objects detection, tracking and classification fro[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/praveen-palanisamy/${PN}-release/archive/release/lunar/${PN}/1.0.1-1.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/cv_bridge
	ros-lunar/pcl_ros
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/visualization_msgs
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
