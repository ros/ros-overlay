# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A generic Lidar SLAM package based on FLOAM which was based on ALOAM by HKU[...]"
HOMEPAGE="https://wanghan.pro"
SRC_URI="https://github.com/flynneva/${PN}-release/archive/release/noetic/${PN}/0.1.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/eigen_conversions
	ros-noetic/geometry_msgs
	ros-noetic/hector_trajectory_server
	ros-noetic/nav_msgs
	ros-noetic/nodelet
	ros-noetic/pcl_ros
	ros-noetic/rosbag
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf2
	ros-noetic/tf2_geometry_msgs
	dev-cpp/eigen
	sci-libs/ceres-solver[sparse,lapack]
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
