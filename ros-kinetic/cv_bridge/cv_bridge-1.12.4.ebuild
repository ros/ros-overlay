# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This contains CvBridge, which converts between ROS	Image messages and OpenCV"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/vision_opencv-release/archive/release/kinetic/cv_bridge/1.12.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/opencv3
	ros-kinetic/rosconsole
	ros-kinetic/sensor_msgs
	dev-libs/boost
	dev-lang/python
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

