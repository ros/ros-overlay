# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The rc_visard_driver provides data from a Roboception rc_visard 3D sensor o[...]"
HOMEPAGE="http://roboception.com/rc_visard"
SRC_URI="https://github.com/roboception/rc_visard-release/archive/release/kinetic/${PN}/2.0.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/geometry_msgs
	ros-kinetic/image_transport
	ros-kinetic/message_runtime
	ros-kinetic/nav_msgs
	ros-kinetic/nodelet
	ros-kinetic/rc_dynamics_api
	ros-kinetic/rc_genicam_api
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_srvs
	ros-kinetic/stereo_msgs
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
	net-misc/curl
	dev-libs/protobuf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
	dev-libs/protobuf
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
