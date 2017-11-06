# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Obstacle detection for 3D point clouds using a height map algorithm."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/jack-oquin-ros-releases/velodyne_height_map-release/archive/release/indigo/velodyne_height_map/0.4.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/nodelet
	ros-indigo/pcl_ros
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/angles
	ros-indigo/catkin
	ros-indigo/pcl_conversions
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
