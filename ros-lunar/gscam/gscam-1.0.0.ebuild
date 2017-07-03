# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="A ROS camera driver that uses gstreamer to connect to
	devices such as webcam"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-drivers-gbp/gscam-release/archive/release/lunar/gscam/1.0.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/camera_calibration_parsers
	ros-lunar/camera_info_manager
	ros-lunar/cv_bridge
	ros-lunar/image_transport
	ros-lunar/nodelet
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	media-libs/gst-plugins-base:1.0
	media-libs/gstreamer:1.0
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

