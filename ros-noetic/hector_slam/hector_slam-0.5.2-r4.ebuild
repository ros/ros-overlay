# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The hector_slam metapackage that installs hector_mapping and related packages."
HOMEPAGE="http://ros.org/wiki/hector_slam"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/${PN}-release/archive/release/noetic/${PN}/0.5.2-4.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/hector_compressed_map_transport
	ros-noetic/hector_geotiff
	ros-noetic/hector_geotiff_launch
	ros-noetic/hector_geotiff_plugins
	ros-noetic/hector_imu_attitude_to_tf
	ros-noetic/hector_map_server
	ros-noetic/hector_map_tools
	ros-noetic/hector_mapping
	ros-noetic/hector_marker_drawing
	ros-noetic/hector_nav_msgs
	ros-noetic/hector_slam_launch
	ros-noetic/hector_trajectory_server
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
