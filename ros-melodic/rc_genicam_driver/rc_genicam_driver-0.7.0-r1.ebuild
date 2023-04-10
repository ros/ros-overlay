# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rc_genicam_driver provides data from a Roboception rc_visard 3D sensor [...]"
HOMEPAGE="http://wiki.ros.org/rc_visard_driver"
SRC_URI="https://github.com/roboception-gbp/${PN}_ros-release/archive/release/melodic/${PN}/0.7.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_updater
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/image_transport
	ros-melodic/message_runtime
	ros-melodic/nodelet
	ros-melodic/rc_common_msgs
	ros-melodic/rc_genicam_api
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/stereo_msgs
	ros-melodic/tf
	net-misc/curl
	dev-libs/protobuf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	dev-libs/protobuf
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
