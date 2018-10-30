# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rc_visard_driver provides data from a Roboception rc_visard 3D sensor o[...]"
HOMEPAGE="http://wiki.ros.org/rc_visard_driver"
SRC_URI="https://github.com/roboception-gbp/rc_visard-release/archive/release/lunar/${PN}/2.4.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/dynamic_reconfigure
	ros-lunar/geometry_msgs
	ros-lunar/image_transport
	ros-lunar/message_runtime
	ros-lunar/nav_msgs
	ros-lunar/nodelet
	ros-lunar/rc_dynamics_api
	ros-lunar/rc_genicam_api
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_srvs
	ros-lunar/stereo_msgs
	ros-lunar/tf
	ros-lunar/visualization_msgs
	net-misc/curl
	dev-libs/protobuf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
	dev-libs/protobuf
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
