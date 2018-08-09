# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="OpenCV tests for the Python and C++ implementations of CvBridge with Image [...]"
HOMEPAGE="http://wiki.ros.org/opencv_tests"
SRC_URI="https://github.com/ros2-gbp/vision_opencv-release/archive/release/bouncy/${PN}/2.0.3-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-bouncy/cv_bridge
	ros-bouncy/launch
	ros-bouncy/rclpy
	ros-bouncy/sensor_msgs
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
