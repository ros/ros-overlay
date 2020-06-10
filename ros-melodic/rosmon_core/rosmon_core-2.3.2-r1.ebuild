# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Node launcher and monitor for ROS. rosmon is a replacement\
\	\	for the ros[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/xqms/rosmon-release/archive/release/melodic/${PN}/2.3.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/cmake_modules
	ros-melodic/diagnostic_msgs
	ros-melodic/rosbash
	ros-melodic/roscpp
	ros-melodic/rosfmt
	ros-melodic/roslib
	ros-melodic/rosmon_msgs
	ros-melodic/rospack
	ros-melodic/std_msgs
	test? ( ros-melodic/catch_ros )
	test? ( ros-melodic/rostest )
	dev-libs/boost[python]
	sys-libs/ncurses
	dev-libs/tinyxml
	dev-cpp/yaml-cpp
	test? ( dev-python/rospkg )
	test? ( dev-python/rospkg )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-lang/python
	dev-lang/python
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
