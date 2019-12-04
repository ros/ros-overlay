# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS package for Multiple objects detection, tracking and classification fro[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/praveen-palanisamy/${PN}-release/archive/release/melodic/${PN}/1.0.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/visualization_msgs
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
