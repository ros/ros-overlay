# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="CloudWatch Logger node for publishing logs to AWS CloudWatch Logs"
HOMEPAGE="http://wiki.ros.org/cloudwatch_logger"
SRC_URI="https://github.com/aws-gbp/${PN}-release/archive/release/dashing/${PN}/3.0.0-2.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/aws_common
	ros-dashing/aws_ros2_common
	ros-dashing/cloudwatch_logs_common
	ros-dashing/launch
	ros-dashing/launch_ros
	ros-dashing/rclcpp
	ros-dashing/std_srvs
	test? ( ros-dashing/ament_cmake_gmock )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/rcl_interfaces
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
