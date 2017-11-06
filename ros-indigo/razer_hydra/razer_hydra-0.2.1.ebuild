# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Unofficial driver and ROS node for Razer Hydra"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/razer_hydra-release/archive/release/indigo/razer_hydra/0.2.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/std_msgs
	ros-indigo/tf
	virtual/libusb:1
	virtual/pkgconfig
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/genmsg
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

