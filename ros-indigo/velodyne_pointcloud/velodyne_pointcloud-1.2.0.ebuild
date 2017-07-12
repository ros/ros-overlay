# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Point cloud conversions for Velodyne 3D LIDARs"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-drivers-gbp/velodyne-release/archive/release/indigo/velodyne_pointcloud/1.2.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/angles
	ros-indigo/dynamic_reconfigure
	ros-indigo/nodelet
	ros-indigo/pcl_ros
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/roslib
	ros-indigo/sensor_msgs
	ros-indigo/tf
	ros-indigo/velodyne_driver
	ros-indigo/velodyne_msgs
	dev-python/pyyaml
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/pcl_conversions
	ros-indigo/roslaunch
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

