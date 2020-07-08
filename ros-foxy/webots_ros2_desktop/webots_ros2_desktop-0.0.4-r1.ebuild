# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="Interface between Webots and ROS2 including the Webots package"
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/${PN}/0.0.4-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/rclpy
	ros-foxy/std_msgs
	ros-foxy/webots_ros2
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
