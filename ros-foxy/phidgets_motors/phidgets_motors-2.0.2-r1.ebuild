# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Driver for the Phidgets Motor devices"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/foxy/${PN}/2.0.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/launch
	ros-foxy/phidgets_api
	ros-foxy/phidgets_msgs
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/std_msgs
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
