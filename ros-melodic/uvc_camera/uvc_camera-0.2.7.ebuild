# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A collection of node\(let\)s that stream images from USB cameras \(UVC\)\
 [...]"
HOMEPAGE="http://ros.org/wiki/uvc_camera"
SRC_URI="https://github.com/ros-drivers-gbp/camera_umd-release/archive/release/melodic/${PN}/0.2.7-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/camera_info_manager
	ros-melodic/image_transport
	ros-melodic/nodelet
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	media-libs/libv4l
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
