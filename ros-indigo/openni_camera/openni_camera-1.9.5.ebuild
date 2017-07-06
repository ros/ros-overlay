# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'A ROS driver for OpenNI depth (+ RGB) cameras. These include: 
	   Microsoft '"
HOMEPAGE="http://www.ros.org/wiki/openni_camera"
SRC_URI="https://github.com/ros-gbp/openni_camera-release/archive/release/indigo/openni_camera/1.9.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_info_manager
	ros-indigo/dynamic_reconfigure
	ros-indigo/image_transport
	ros-indigo/nodelet
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	dev-libs/OpenNi
	virtual/libusb:1
	dev-libs/log4cxx
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

