# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Point Grey camera driver based on libflycapture2.'"
HOMEPAGE="http://ros.org/wiki/pointgrey_camera_driver"
SRC_URI="https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/indigo/pointgrey_camera_driver/0.12.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_info_manager
	ros-indigo/diagnostic_updater
	ros-indigo/dynamic_reconfigure
	ros-indigo/image_exposure_msgs
	ros-indigo/image_proc
	ros-indigo/image_transport
	ros-indigo/nodelet
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/wfov_camera_msgs
	sys-libs/libraw1394
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslint
	net-misc/curl
	app-arch/dpkg
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

