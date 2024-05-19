# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Spinnaker camera driver based on Spinnaker."
HOMEPAGE="http://ros.org/wiki/spinnaker_camera_driver"
SRC_URI="https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/noetic/${PN}/0.2.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/camera_info_manager
	ros-noetic/diagnostic_updater
	ros-noetic/dynamic_reconfigure
	ros-noetic/image_exposure_msgs
	ros-noetic/image_proc
	ros-noetic/image_transport
	ros-noetic/nodelet
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/wfov_camera_msgs
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/roslint )
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	net-misc/curl
	app-arch/dpkg
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
