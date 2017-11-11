# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Point cloud conversions for Velodyne 3D LIDARs."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-drivers-gbp/velodyne-release/archive/release/kinetic/velodyne_pointcloud/1.3.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/angles
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/nodelet
	ros-kinetic/pcl_ros
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	ros-kinetic/velodyne_driver
	ros-kinetic/velodyne_laserscan
	ros-kinetic/velodyne_msgs
	dev-python/pyyaml
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/pcl_conversions
	ros-kinetic/roslaunch
	ros-kinetic/rostest
	ros-kinetic/tf2_ros
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
