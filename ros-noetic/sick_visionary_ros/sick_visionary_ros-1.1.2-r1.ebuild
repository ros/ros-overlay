# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Open source drivers for the SICK Visionary-S 3D camera and Visionary-T Mini[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SICKAG/${PN}-release/archive/release/noetic/${PN}/1.1.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Unlicense"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/diagnostic_updater
	ros-noetic/image_transport
	ros-noetic/pcl_conversions
	ros-noetic/pcl_ros
	ros-noetic/roscpp
	ros-noetic/roslaunch
	ros-noetic/sensor_msgs
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
