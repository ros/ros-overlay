# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Serial driver for Rover platform."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RoverRobotics-release/roverrobotics_ros2-release/archive/release/foxy/${PN}/0.1.1-2.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/diagnostic_updater
	ros-foxy/nav_msgs
	ros-foxy/rclcpp
	ros-foxy/rover_msgs
	ros-foxy/std_msgs
	ros-foxy/tf2_geometry_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
