# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Eclipse Paho C Client Library for the MQTT Protocol"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/nobleo/paho.mqtt.c-release/archive/release/noetic/${PN}/1.3.13-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Eclipse Public License 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-libs/openssl
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
