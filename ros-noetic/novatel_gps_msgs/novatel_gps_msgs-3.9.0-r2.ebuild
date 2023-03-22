# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Messages for proprietary \(non-NMEA\) sentences from Novatel GPS receivers."
HOMEPAGE="https://ivs-git.dyn.datasys.swri.edu/uss/novatel_gps.git"
SRC_URI="https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/noetic/${PN}/3.9.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Southwest-Research-Institute-Proprietary"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/message_runtime
	ros-noetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
