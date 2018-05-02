# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Transports audio from a source to a destination. Audio sources can come\
  [...]"
HOMEPAGE="http://ros.org/wiki/audio_capture"
SRC_URI="https://github.com/ros-gbp/audio_common-release/archive/release/lunar/${PN}/0.3.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/audio_common_msgs
	ros-lunar/roscpp
	media-libs/gstreamer:1.0
	media-libs/gst-plugins-base:1.0
	media-libs/gst-plugins-good:1.0
	media-libs/gst-plugins-ugly:1.0
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	media-libs/gst-plugins-base:1.0
	media-libs/gstreamer:1.0
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
