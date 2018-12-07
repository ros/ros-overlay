# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rc_hand_eye_calibration_client package"
HOMEPAGE="http://wiki.ros.org/rc_hand_eye_calibration_client"
SRC_URI="https://github.com/roboception-gbp/rc_visard-release/archive/release/lunar/${PN}/2.4.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/dynamic_reconfigure
	ros-lunar/geometry_msgs
	ros-lunar/message_generation
	ros-lunar/message_runtime
	ros-lunar/roscpp
	ros-lunar/std_srvs
	net-misc/curl
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
