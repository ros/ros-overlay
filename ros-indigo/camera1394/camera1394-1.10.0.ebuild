# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'ROS driver for devices supporting the IEEE 1394 Digital Camera
	(IIDC) protoc'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-drivers-gbp/camera1394-release/archive/release/indigo/camera1394/1.10.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_info_manager
	ros-indigo/diagnostic_updater
	ros-indigo/dynamic_reconfigure
	ros-indigo/image_transport
	ros-indigo/message_runtime
	ros-indigo/nodelet
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/tf
	dev-libs/boost
	media-libs/libdc1394
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/driver_base
	ros-indigo/message_generation
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

