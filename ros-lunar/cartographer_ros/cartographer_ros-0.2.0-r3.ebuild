# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Cartographer is a system that provides real-time simultaneous localization\[...]"
HOMEPAGE="https://github.com/googlecartographer/cartographer_ros"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/lunar/${PN}/0.2.0-3.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/cartographer
	ros-lunar/cartographer_ros_msgs
	ros-lunar/eigen_conversions
	ros-lunar/geometry_msgs
	ros-lunar/message_runtime
	ros-lunar/nav_msgs
	ros-lunar/pcl_conversions
	ros-lunar/robot_state_publisher
	ros-lunar/rosbag
	ros-lunar/roscpp
	ros-lunar/roslaunch
	ros-lunar/roslib
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/tf2
	ros-lunar/tf2_eigen
	ros-lunar/tf2_ros
	ros-lunar/urdf
	ros-lunar/visualization_msgs
	test? ( ros-lunar/rosunit )
	dev-cpp/gflags
	dev-cpp/glog
	sci-libs/pcl
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	sys-devel/gcc
	dev-cpp/gtest
	dev-libs/protobuf
	dev-python/sphinx
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
