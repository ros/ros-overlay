# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Messages for proprietary \(non-NMEA\) sentences from Novatel GPS receivers."
HOMEPAGE="https://ivs-git.dyn.datasys.swri.edu/uss/novatel_gps.git"
SRC_URI="https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/indigo/${PN}/3.7.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Southwest Research Institute Proprietary"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/message_runtime
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
