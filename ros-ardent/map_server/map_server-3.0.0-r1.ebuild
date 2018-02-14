# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="map_server provides the <tt>map_server</tt> ROS <a href=\"http://www.ros.or[...]"
HOMEPAGE="http://wiki.ros.org/map_server"
SRC_URI="https://github.com/ros2-gbp/navigation-release/archive/release/ardent/${PN}/3.0.0-1.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-ardent/nav_msgs
	ros-ardent/rclcpp
	ros-ardent/rcutils
	ros-ardent/tf2
	test? ( ros-ardent/ament_cmake_gtest )
	test? ( ros-ardent/ament_cmake_pytest )
	test? ( ros-ardent/launch_testing )
	test? ( ros-ardent/rclpy )
	dev-libs/boost
	media-libs/libsdl
	media-libs/sdl-image
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake
	ros-ardent/geometry_msgs
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
