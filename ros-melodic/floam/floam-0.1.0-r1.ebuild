# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A generic Lidar SLAM package based on FLOAM which was based on ALOAM by HKU[...]"
HOMEPAGE="https://wanghan.pro"
SRC_URI="https://github.com/flynneva/${PN}-release/archive/release/melodic/${PN}/0.1.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/eigen_conversions
	ros-melodic/geometry_msgs
	ros-melodic/hector_trajectory_server
	ros-melodic/nav_msgs
	ros-melodic/nodelet
	ros-melodic/pcl_ros
	ros-melodic/rosbag
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf2
	ros-melodic/tf2_geometry_msgs
	dev-cpp/eigen
	sci-libs/ceres-solver[sparse,lapack]
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
