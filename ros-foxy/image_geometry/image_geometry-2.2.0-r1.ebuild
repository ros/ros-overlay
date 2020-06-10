# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="\`image_geometry\` contains C++ and Python libraries for interpreting image[...]"
HOMEPAGE="http://www.ros.org/wiki/image_geometry"
SRC_URI="https://github.com/ros2-gbp/vision_opencv-release/archive/release/foxy/${PN}/2.2.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/sensor_msgs
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_cmake_pytest )
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_python
	ros-foxy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
