# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This contains CvBridge, which converts between ROS2\
	Image messages and[...]"
HOMEPAGE="http://www.ros.org/wiki/cv_bridge"
SRC_URI="https://github.com/ros2-gbp/vision_opencv-release/archive/release/humble/${PN}/3.2.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_index_python
	ros-humble/rcpputils
	ros-humble/sensor_msgs
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_cmake_pytest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	dev-libs/boost[python]
	media-libs/opencv
	dev-python/numpy
	media-libs/opencv[python]
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_ros
	ros-humble/python_cmake_module
	dev-libs/boost
	dev-libs/boost[python]
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
