# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Cartographer is a system that provides real-time simultaneous localization\[...]"
HOMEPAGE="https://github.com/googlecartographer/cartographer_ros"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/0.2.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/cartographer
	ros-kinetic/cartographer_ros_msgs
	ros-kinetic/eigen_conversions
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/nav_msgs
	ros-kinetic/pcl_conversions
	ros-kinetic/robot_state_publisher
	ros-kinetic/rosbag
	ros-kinetic/roscpp
	ros-kinetic/roslaunch
	ros-kinetic/roslib
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf2
	ros-kinetic/tf2_eigen
	ros-kinetic/tf2_ros
	ros-kinetic/urdf
	ros-kinetic/visualization_msgs
	test? ( ros-kinetic/rosunit )
	dev-cpp/gflags
	dev-cpp/glog
	sci-libs/pcl
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	sys-devel/gcc
	dev-cpp/gtest
	dev-libs/protobuf
	dev-python/sphinx
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
