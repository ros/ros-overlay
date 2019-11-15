# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Kinesis Video Streams producer node"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/aws-gbp/${PN}-release/archive/release/dashing/${PN}/3.1.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/launch
	ros-dashing/launch_ros
	ros-dashing/rmw_implementation
	test? ( ros-dashing/ament_cmake_gmock )
	test? ( ros-dashing/ament_cmake_gtest )
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/aws_common
	ros-dashing/aws_ros2_common
	ros-dashing/image_transport
	ros-dashing/kinesis_manager
	ros-dashing/kinesis_video_msgs
	ros-dashing/rclcpp
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
