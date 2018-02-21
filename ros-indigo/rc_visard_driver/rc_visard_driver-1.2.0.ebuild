# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The rc_visard_driver package"
HOMEPAGE="http://roboception.com/rc_visard"
SRC_URI="https://github.com/roboception/rc_visard-release/archive/release/indigo/${PN}/1.2.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/image_transport
	ros-indigo/nodelet
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_srvs
	ros-indigo/stereo_msgs
	ros-indigo/tf
	net-misc/curl
	dev-libs/protobuf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-libs/protobuf
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
