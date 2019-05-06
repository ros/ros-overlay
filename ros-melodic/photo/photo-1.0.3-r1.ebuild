# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The photo package provides access to digital cameras. Much of the underlyin[...]"
HOMEPAGE="http://wiki.ros.org/photo"
SRC_URI="https://github.com/bosch-ros-pkg/${PN}-release/archive/release/melodic/${PN}/1.0.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/message_runtime
	ros-melodic/roscpp
	ros-melodic/self_test
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	media-gfx/gphoto2
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
