# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Cartographer is a system that provides real-time simultaneous localization\[...]"
HOMEPAGE="https://github.com/googlecartographer/cartographer_ros"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/1.0.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/cartographer
	ros-melodic/cartographer_ros_msgs
	ros-melodic/eigen_conversions
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/nav_msgs
	ros-melodic/pcl_conversions
	ros-melodic/robot_state_publisher
	ros-melodic/rosbag
	ros-melodic/roscpp
	ros-melodic/roslaunch
	ros-melodic/roslib
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf2
	ros-melodic/tf2_eigen
	ros-melodic/tf2_ros
	ros-melodic/urdf
	ros-melodic/visualization_msgs
	test? ( ros-melodic/rosunit )
	dev-cpp/gflags
	dev-cpp/glog
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	sys-devel/gcc
	dev-cpp/gtest
	dev-libs/protobuf
	dev-python/sphinx
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
