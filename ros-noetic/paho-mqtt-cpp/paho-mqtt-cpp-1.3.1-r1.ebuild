# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Eclipse Paho MQTT C++ Client Library"
HOMEPAGE="https://github.com/eclipse/paho.mqtt.cpp.git"
SRC_URI="https://github.com/nobleo/paho.mqtt.cpp-release/archive/release/noetic/${PN}/1.3.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Eclipse Public License - v 1.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/paho-mqtt-c
	dev-libs/openssl
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
