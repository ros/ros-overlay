# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The gripit package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/Yannick-Oderri/${PN}-release/archive/release/kinetic/${PN}/0.0.1-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rospy
	dev-python/PyQt5
	dev-python/future
	dev-python/numpy
	dev-python/rosdep
	sci-libs/scikits_image
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
