# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="depthimage_to_laserscan"
HOMEPAGE="http://ros.org/wiki/depthimage_to_laserscan"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/ardent/${PN}/2.0.0-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-ardent/image_geometry
	ros-ardent/rclcpp
	ros-ardent/sensor_msgs
	test? ( ros-ardent/ament_cmake_gtest )
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
