# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Driver for the Phidgets high speed encoder devices"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/galactic/${PN}/2.2.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/launch
	ros-galactic/phidgets_api
	ros-galactic/phidgets_msgs
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
