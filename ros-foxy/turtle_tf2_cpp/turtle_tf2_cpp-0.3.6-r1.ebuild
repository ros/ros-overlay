# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="turtle_tf2_cpp demonstrates how to write a ROS2 C++ tf2 broadcaster and lis[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/foxy/${PN}/0.3.6-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/geometry_msgs
	ros-foxy/launch
	ros-foxy/launch_ros
	ros-foxy/message_filters
	ros-foxy/rclcpp
	ros-foxy/tf2
	ros-foxy/tf2_geometry_msgs
	ros-foxy/tf2_ros
	ros-foxy/turtlesim
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
