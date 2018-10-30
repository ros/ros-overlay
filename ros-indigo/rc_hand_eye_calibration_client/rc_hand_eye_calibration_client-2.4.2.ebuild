# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rc_hand_eye_calibration_client package"
HOMEPAGE="http://wiki.ros.org/rc_hand_eye_calibration_client"
SRC_URI="https://github.com/roboception-gbp/rc_visard-release/archive/release/indigo/${PN}/2.4.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/message_generation
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/std_srvs
	net-misc/curl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
