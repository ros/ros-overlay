# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The thermapp_camera package provides a library and a node for the
  	Opgal® Ther'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/Hacks4ROS-release/h4r_thermapp_camera/archive/release/indigo/h4r_thermapp_camera/0.0.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/dynamic_reconfigure
	ros-indigo/image_transport
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	virtual/libusb:1
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

