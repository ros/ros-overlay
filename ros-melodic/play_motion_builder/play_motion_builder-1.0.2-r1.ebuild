# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The play_motion_builder package, a node to handle the creation of new motio[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-robotics/${PN}-release/archive/release/melodic/${PN}/1.0.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/play_motion_builder_msgs
	ros-melodic/play_motion_msgs
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	test? ( ros-melodic/rostest )
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
