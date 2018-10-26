# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Point cloud conversions for Velodyne 3D LIDARs."
HOMEPAGE="http://ros.org/wiki/velodyne_pointcloud"
SRC_URI="https://github.com/ros-drivers-gbp/velodyne-release/archive/release/kinetic/${PN}/1.5.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/angles
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/nodelet
	ros-kinetic/pcl_conversions
	ros-kinetic/pcl_ros
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	ros-kinetic/velodyne_driver
	ros-kinetic/velodyne_laserscan
	ros-kinetic/velodyne_msgs
	test? ( ros-kinetic/roslaunch )
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/rosunit )
	test? ( ros-kinetic/tf2_ros )
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
