# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The points_preprocessor package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/nobleo/core_perception-release/archive/release/melodic/${PN}/1.14.15-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/autoware_config_msgs
	ros-melodic/cv_bridge
	ros-melodic/message_filters
	ros-melodic/pcl_conversions
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/roslint
	ros-melodic/rostest
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/tf2
	ros-melodic/tf2_eigen
	ros-melodic/tf2_ros
	ros-melodic/velodyne_pointcloud
	dev-cpp/gtest
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
