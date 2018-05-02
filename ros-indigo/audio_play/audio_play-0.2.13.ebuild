# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Outputs audio to a speaker from a source node."
HOMEPAGE="http://ros.org/wiki/audio_play"
SRC_URI="https://github.com/ros-gbp/audio_common-release/archive/release/indigo/${PN}/0.2.13-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/audio_common_msgs
	ros-indigo/roscpp
	media-libs/gst-plugins-good:0.10
	media-libs/gst-plugins-ugly:0.10
	media-libs/gst-plugins-base:0.10
	media-libs/gstreamer:0.10
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	media-libs/gst-plugins-base:0.10
	media-libs/gstreamer:0.10
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
