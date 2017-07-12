# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Java generation for smarthome_media_msgs package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rosalfred-release/smarthome_media_msgs_java-release/archive/release/indigo/smarthome_media_msgs_java/0.1.82-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/genjava
	ros-indigo/rosjava_build_tools
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rosjava_messages
	ros-indigo/roslib
	ros-indigo/smarthome_media_msgs
	dev-python/rosdistro
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

