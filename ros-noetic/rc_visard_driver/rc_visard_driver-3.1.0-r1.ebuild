# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rc_visard_driver provides data from a Roboception rc_visard 3D sensor o[...]"
HOMEPAGE="http://wiki.ros.org/rc_visard_driver"
SRC_URI="https://github.com/roboception-gbp/rc_visard-release/archive/release/noetic/${PN}/3.1.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/diagnostic_updater
	ros-noetic/dynamic_reconfigure
	ros-noetic/geometry_msgs
	ros-noetic/image_transport
	ros-noetic/message_runtime
	ros-noetic/nav_msgs
	ros-noetic/nodelet
	ros-noetic/rc_common_msgs
	ros-noetic/rc_dynamics_api
	ros-noetic/rc_genicam_api
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/stereo_msgs
	ros-noetic/tf
	ros-noetic/visualization_msgs
	net-misc/curl
	dev-libs/protobuf
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	dev-libs/protobuf
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
