# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This contains CvBridge, which converts between ROS2\
	Image messages and[...]"
HOMEPAGE="http://www.ros.org/wiki/cv_bridge"
SRC_URI="https://github.com/ros2-gbp/vision_opencv-release/archive/release/galactic/${PN}/3.1.3-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_index_python
	ros-galactic/rcpputils
	ros-galactic/sensor_msgs
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_cmake_pytest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	dev-libs/boost[python]
	media-libs/opencv
	dev-python/numpy
	media-libs/opencv[python]
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
	ros-galactic/python_cmake_module
	dev-libs/boost
	dev-libs/boost[python]
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
