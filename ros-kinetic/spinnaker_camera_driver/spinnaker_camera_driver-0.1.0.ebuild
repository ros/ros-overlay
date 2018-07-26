# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Spinnaker camera driver based on Spinnaker."
HOMEPAGE="http://ros.org/wiki/spinnaker_camera_driver"
SRC_URI="https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/kinetic/${PN}/0.1.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/camera_info_manager
	ros-kinetic/diagnostic_updater
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/image_exposure_msgs
	ros-kinetic/image_proc
	ros-kinetic/image_transport
	ros-kinetic/nodelet
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/wfov_camera_msgs
	test? ( ros-kinetic/roslaunch )
	test? ( ros-kinetic/roslint )
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	net-misc/curl
	app-arch/dpkg
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
