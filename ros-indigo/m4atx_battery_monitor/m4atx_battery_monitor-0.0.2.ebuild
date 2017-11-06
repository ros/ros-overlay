# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Battery Monitor for the M4-ATX Power Module"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/m4atx_battery_monitor-release/archive/release/indigo/m4atx_battery_monitor/0.0.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/std_msgs
	app-accessibility/espeak
	virtual/libusb
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
