# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The rc_genicam_driver provides data from a Roboception rc_visard 3D sensor [...]"
HOMEPAGE="http://wiki.ros.org/rc_visard_driver"
SRC_URI="https://github.com/roboception-gbp/${PN}_ros-release/archive/release/noetic/${PN}/0.6.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/diagnostic_updater
	ros-noetic/dynamic_reconfigure
	ros-noetic/geometry_msgs
	ros-noetic/image_transport
	ros-noetic/message_runtime
	ros-noetic/nodelet
	ros-noetic/rc_common_msgs
	ros-noetic/rc_genicam_api
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/stereo_msgs
	ros-noetic/tf
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
