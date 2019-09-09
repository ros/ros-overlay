# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="ROS2 H264 encoder node"
HOMEPAGE="http://wiki.ros.org/h264_video_encoder"
SRC_URI="https://github.com/aws-gbp/${PN}-release/archive/release/dashing/${PN}/2.0.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="LGPL-2.1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/aws_common
	ros-dashing/aws_ros2_common
	ros-dashing/image_transport
	ros-dashing/kinesis_video_msgs
	ros-dashing/launch
	ros-dashing/launch_ros
	ros-dashing/rmw_implementation
	ros-dashing/sensor_msgs
	test? ( ros-dashing/ament_cmake_gtest )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/h264_encoder_core
	ros-dashing/rclcpp
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
