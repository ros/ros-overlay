# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The hector_slam metapackage that installs hector_mapping and related packages."
HOMEPAGE="http://ros.org/wiki/hector_slam"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/${PN}-release/archive/release/melodic/${PN}/0.4.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/hector_compressed_map_transport
	ros-melodic/hector_geotiff
	ros-melodic/hector_geotiff_plugins
	ros-melodic/hector_imu_attitude_to_tf
	ros-melodic/hector_map_server
	ros-melodic/hector_map_tools
	ros-melodic/hector_mapping
	ros-melodic/hector_marker_drawing
	ros-melodic/hector_nav_msgs
	ros-melodic/hector_slam_launch
	ros-melodic/hector_trajectory_server
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
