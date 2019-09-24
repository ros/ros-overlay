# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Package providing a ROS node for sending health metrics to Cloudwatch Metrics"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/aws-gbp/${PN}-release/archive/release/dashing/${PN}/3.0.1-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/aws_common
	ros-dashing/launch
	ros-dashing/launch_ros
	ros-dashing/rclcpp
	ros-dashing/ros_monitoring_msgs
	test? ( ros-dashing/ament_cmake_gmock )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/aws_ros2_common
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
