# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Driver node for SceneScan and SP1 stereo vision sensors by Nerian Vision GmbH"
HOMEPAGE="http://wiki.ros.org/nerian_stereo"
SRC_URI="https://github.com/nerian-vision/${PN}-release/archive/release/melodic/${PN}/3.7.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/dynamic_reconfigure
	ros-melodic/message_runtime
	ros-melodic/nodelet
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	dev-libs/boost[python]
	net-misc/curl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
