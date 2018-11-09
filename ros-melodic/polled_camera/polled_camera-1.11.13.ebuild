# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="polled_camera contains a service and C++ helper classes for implementing a [...]"
HOMEPAGE="http://ros.org/wiki/polled_camera"
SRC_URI="https://github.com/ros-gbp/image_common-release/archive/release/melodic/${PN}/1.11.13-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/image_transport
	ros-melodic/message_runtime
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
