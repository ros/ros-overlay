# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ROS interface to Rexroth ROKIT Locator"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/locator_ros_bridge-release/archive/release/foxy/${PN}/2.0.9-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/geometry_msgs
	ros-foxy/launch_xml
	ros-foxy/nav_msgs
	ros-foxy/pcl_conversions
	ros-foxy/rclcpp
	ros-foxy/rosidl_default_runtime
	ros-foxy/sensor_msgs
	ros-foxy/std_srvs
	ros-foxy/tf2_geometry_msgs
	ros-foxy/tf2_ros
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	dev-libs/poco
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
