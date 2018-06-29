# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="map_server provides the <tt>map_server</tt> ROS <a href=\"http://www.ros.or[...]"
HOMEPAGE="http://wiki.ros.org/map_server"
SRC_URI="https://github.com/ros2-gbp/navigation-release/archive/release/bouncy/${PN}/3.1.0-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/nav_msgs
	ros-bouncy/rclcpp
	ros-bouncy/rcutils
	ros-bouncy/tf2
	test? ( ros-bouncy/ament_cmake_gtest )
	test? ( ros-bouncy/ament_cmake_pytest )
	test? ( ros-bouncy/launch_testing )
	test? ( ros-bouncy/rclpy )
	media-libs/libsdl
	media-libs/sdl-image
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
	ros-bouncy/geometry_msgs
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
