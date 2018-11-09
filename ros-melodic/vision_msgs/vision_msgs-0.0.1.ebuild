# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Messages for interfacing with various computer vision pipelines, such as\
 [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/Kukanani/${PN}-release/archive/release/melodic/${PN}/0.0.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/message_generation
	ros-melodic/message_runtime
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	test? ( ros-melodic/rosunit )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
