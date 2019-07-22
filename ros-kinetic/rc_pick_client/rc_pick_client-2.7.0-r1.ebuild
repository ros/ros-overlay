# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The ros client for roboception grasp generation modules"
HOMEPAGE="http://wiki.ros.org/rc_pick_client"
SRC_URI="https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/${PN}/2.7.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/rc_common_msgs
	ros-kinetic/rcdiscover
	ros-kinetic/roscpp
	ros-kinetic/shape_msgs
	ros-kinetic/std_srvs
	ros-kinetic/tf
	ros-kinetic/tf2_geometry_msgs
	ros-kinetic/visualization_msgs
	net-misc/curl
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
