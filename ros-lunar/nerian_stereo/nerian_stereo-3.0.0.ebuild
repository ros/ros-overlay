# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Driver node for SceneScan and SP1 stereo vision sensors by Nerian Vision Te[...]"
HOMEPAGE="http://wiki.ros.org/nerian_stereo"
SRC_URI="https://github.com/nerian-vision/${PN}-release/archive/release/lunar/${PN}/3.0.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/cv_bridge
	ros-lunar/message_runtime
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	dev-libs/boost
	media-libs/libsdl
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
