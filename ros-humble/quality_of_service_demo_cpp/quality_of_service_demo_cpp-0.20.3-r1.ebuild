# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="C++ Demo applications for Quality of Service features"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/demos-release/archive/release/humble/${PN}/0.20.3-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/example_interfaces
	ros-humble/launch_ros
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/rcutils
	ros-humble/rmw
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/launch )
	test? ( ros-humble/launch_testing )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/rmw_implementation_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
