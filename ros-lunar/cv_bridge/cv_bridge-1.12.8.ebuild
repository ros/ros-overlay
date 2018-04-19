# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This contains CvBridge, which converts between ROS\
	Image messages and [...]"
HOMEPAGE="http://www.ros.org/wiki/cv_bridge"
SRC_URI="https://github.com/ros-gbp/vision_opencv-release/archive/release/lunar/${PN}/1.12.8-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/opencv3
	ros-lunar/rosconsole
	ros-lunar/sensor_msgs
	test? ( ros-lunar/rostest )
	dev-libs/boost
	dev-lang/python
	test? ( dev-python/numpy )
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_prepare() {
	cd ${P}
	EPATCH_SOURCE="${FILESDIR}" EPATCH_SUFFIX="patch" \
	EPATCH_FORCE="yes" epatch
	ros-cmake_src_prepare
}
