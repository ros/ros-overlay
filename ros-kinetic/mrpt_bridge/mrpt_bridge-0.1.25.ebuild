# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="C++ library to convert between ROS messages and MRPT classes"
HOMEPAGE="http://wiki.ros.org/mrpt_bridge"
SRC_URI="https://github.com/mrpt-ros-pkg-release/${PN}-release/archive/release/kinetic/${PN}/0.1.25-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/geometry_msgs
	ros-kinetic/marker_msgs
	ros-kinetic/message_generation
	ros-kinetic/message_runtime
	ros-kinetic/mrpt1
	ros-kinetic/mrpt_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/stereo_msgs
	ros-kinetic/tf
	test? ( ros-kinetic/rosunit )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/pcl_conversions
	sci-libs/pcl
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
