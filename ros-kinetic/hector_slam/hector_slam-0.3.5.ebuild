# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The hector_slam metapackage that installs hector_mapping and related packages"
HOMEPAGE="http://ros.org/wiki/hector_slam"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/kinetic/hector_slam/0.3.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/hector_compressed_map_transport
	ros-kinetic/hector_geotiff
	ros-kinetic/hector_geotiff_plugins
	ros-kinetic/hector_imu_attitude_to_tf
	ros-kinetic/hector_map_server
	ros-kinetic/hector_map_tools
	ros-kinetic/hector_mapping
	ros-kinetic/hector_marker_drawing
	ros-kinetic/hector_nav_msgs
	ros-kinetic/hector_slam_launch
	ros-kinetic/hector_trajectory_server
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

