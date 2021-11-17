# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The laser_ortho_projector package calculates orthogonal projections of Lase[...]"
HOMEPAGE="http://wiki.ros.org/laser_scan_matcher"
SRC_URI="https://github.com/ros-gbp/scan_tools-release/archive/release/noetic/${PN}/0.3.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/message_filters
	ros-noetic/nodelet
	ros-noetic/pcl_conversions
	ros-noetic/pcl_ros
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/tf
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
