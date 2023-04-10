# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Package to keep interface independent of the driver"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/luxonis/depthai-ros-release/archive/release/foxy/${PN}/2.5.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/geometry_msgs
	ros-foxy/rclcpp
	ros-foxy/rosidl_default_generators
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/vision_msgs
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
