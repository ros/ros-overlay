# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Point cloud conversions for Velodyne 3D LIDARs."
HOMEPAGE="http://ros.org/wiki/velodyne_pointcloud"
SRC_URI="https://github.com/ros-drivers-gbp/velodyne-release/archive/release/melodic/${PN}/1.5.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/angles
	ros-melodic/dynamic_reconfigure
	ros-melodic/nodelet
	ros-melodic/pcl_conversions
	ros-melodic/pcl_ros
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/roslib
	ros-melodic/sensor_msgs
	ros-melodic/tf
	ros-melodic/velodyne_driver
	ros-melodic/velodyne_laserscan
	ros-melodic/velodyne_msgs
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
	test? ( ros-melodic/tf2_ros )
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
