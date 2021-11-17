# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS Wrappers for the Picovoice libraries"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/reinzor/picovoice_ros-release/archive/release/noetic/${PN}/0.0.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/ddynamic_reconfigure
	ros-noetic/picovoice_msgs
	ros-noetic/roscpp
	ros-noetic/roslib
	media-libs/libsndfile
	=media-libs/portaudio-19*
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
