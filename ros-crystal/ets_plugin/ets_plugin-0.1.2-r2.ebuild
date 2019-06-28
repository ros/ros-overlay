# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="ETS2/ATS plugin to publish telemetry information using ROS2"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/brunodmt/ets_ros2-release/archive/release/crystal/${PN}/0.1.2-2.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/ets_msgs
	ros-crystal/launch_ros
	ros-crystal/rclcpp
	ros-crystal/rcutils
	ros-crystal/rmw
	ros-crystal/rosidl_default_runtime
	ros-crystal/std_msgs
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
	ros-crystal/rmw_implementation_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
