# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Point cloud conversions for Velodyne 3D LIDARs."
HOMEPAGE="http://ros.org/wiki/velodyne_pointcloud"
SRC_URI="https://github.com/ros-drivers-gbp/velodyne-release/archive/release/indigo/${PN}/1.5.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/angles
	ros-indigo/dynamic_reconfigure
	ros-indigo/nodelet
	ros-indigo/pcl_conversions
	ros-indigo/pcl_ros
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/roslib
	ros-indigo/sensor_msgs
	ros-indigo/tf
	ros-indigo/velodyne_driver
	ros-indigo/velodyne_laserscan
	ros-indigo/velodyne_msgs
	test? ( ros-indigo/roslaunch )
	test? ( ros-indigo/rostest )
	test? ( ros-indigo/rosunit )
	test? ( ros-indigo/tf2_ros )
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
