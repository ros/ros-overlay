# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The hector_slam metapackage that installs hector_mapping and related packages.'"
HOMEPAGE="http://ros.org/wiki/hector_slam"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/indigo/hector_slam/0.3.5-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/hector_compressed_map_transport
	ros-indigo/hector_geotiff
	ros-indigo/hector_geotiff_plugins
	ros-indigo/hector_imu_attitude_to_tf
	ros-indigo/hector_map_server
	ros-indigo/hector_map_tools
	ros-indigo/hector_mapping
	ros-indigo/hector_marker_drawing
	ros-indigo/hector_nav_msgs
	ros-indigo/hector_slam_launch
	ros-indigo/hector_trajectory_server
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

