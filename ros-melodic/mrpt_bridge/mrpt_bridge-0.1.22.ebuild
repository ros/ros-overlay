# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="C++ libraries to convert between ROS and MRPT classes and messages"
HOMEPAGE="http://wiki.ros.org/mrpt_bridge"
SRC_URI="https://github.com/mrpt-ros-pkg-release/${PN}-release/archive/release/melodic/${PN}/0.1.22-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/geometry_msgs
	ros-melodic/marker_msgs
	ros-melodic/message_generation
	ros-melodic/message_runtime
	ros-melodic/mrpt1
	ros-melodic/mrpt_msgs
	ros-melodic/nav_msgs
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/stereo_msgs
	ros-melodic/tf
	test? ( ros-melodic/rosunit )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/pcl_conversions
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
