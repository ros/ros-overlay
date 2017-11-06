# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This is a modified version of the ROS driver for devices supporting the IEE[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/srv/camera1394stereo-release/archive/release/indigo/camera1394stereo/1.0.3-3.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_info_manager
	ros-indigo/driver_base
	ros-indigo/dynamic_reconfigure
	ros-indigo/image_transport
	ros-indigo/nodelet
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	media-libs/libdc1394
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
