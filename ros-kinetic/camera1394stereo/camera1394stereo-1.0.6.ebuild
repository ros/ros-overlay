# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This is a modified version of the ROS driver for devices supporting the IEE[...]"
HOMEPAGE="http://ros.org/wiki/camera1394stereo"
SRC_URI="https://github.com/srv/${PN}-release/archive/release/kinetic/${PN}/1.0.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/camera_info_manager
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/image_transport
	ros-kinetic/nodelet
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	media-libs/libdc1394
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
