# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The jsk_baxter_startup package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_robot-release/archive/release/indigo/jsk_baxter_startup/1.1.0-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/baxter_core_msgs
	ros-indigo/baxter_description
	ros-indigo/baxter_examples
	ros-indigo/baxter_interface
	ros-indigo/baxter_tools
	ros-indigo/checkerboard_detector
	ros-indigo/dynamic_tf_publisher
	ros-indigo/image_view
	ros-indigo/joy
	ros-indigo/openni_launch
	ros-indigo/roseus
	ros-indigo/rostwitter
	ros-indigo/sound_play
	ros-indigo/topic_tools
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

