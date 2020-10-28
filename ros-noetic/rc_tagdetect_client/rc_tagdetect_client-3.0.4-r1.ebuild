# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The ros client for roboception tag detection modules"
HOMEPAGE="http://wiki.ros.org/rc_tagdetect_client"
SRC_URI="https://github.com/roboception-gbp/rc_visard-release/archive/release/noetic/${PN}/3.0.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/dynamic_reconfigure
	ros-noetic/geometry_msgs
	ros-noetic/message_runtime
	ros-noetic/rc_common_msgs
	ros-noetic/rcdiscover
	ros-noetic/roscpp
	ros-noetic/std_srvs
	ros-noetic/tf
	ros-noetic/tf2_geometry_msgs
	ros-noetic/visualization_msgs
	net-misc/curl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
