# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'A ROS camera driver that uses gstreamer to connect to
	devices such as webcam'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-drivers-gbp/gscam-release/archive/release/indigo/gscam/0.2.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_calibration_parsers
	ros-indigo/camera_info_manager
	ros-indigo/cv_bridge
	ros-indigo/image_transport
	ros-indigo/nodelet
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	media-libs/gst-plugins-base:0.10
	media-libs/gstreamer:0.10
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

