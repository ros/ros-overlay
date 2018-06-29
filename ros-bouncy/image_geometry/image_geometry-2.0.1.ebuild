# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="\`image_geometry\` contains C++ and Python libraries for interpreting image[...]"
HOMEPAGE="http://www.ros.org/wiki/image_geometry"
SRC_URI="https://github.com/ros2-gbp/vision_opencv-release/archive/release/bouncy/${PN}/2.0.1-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/sensor_msgs
	test? ( ros-bouncy/ament_cmake_gtest )
	test? ( ros-bouncy/ament_cmake_pytest )
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
