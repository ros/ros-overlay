# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The points_preprocessor package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/nobleo/core_perception-release/archive/release/noetic/${PN}/1.14.14-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/autoware_config_msgs
	ros-noetic/cv_bridge
	ros-noetic/message_filters
	ros-noetic/pcl_conversions
	ros-noetic/pcl_ros
	ros-noetic/roscpp
	ros-noetic/roslint
	ros-noetic/rostest
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/tf2
	ros-noetic/tf2_eigen
	ros-noetic/tf2_ros
	ros-noetic/velodyne_pcl
	dev-cpp/gtest
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
