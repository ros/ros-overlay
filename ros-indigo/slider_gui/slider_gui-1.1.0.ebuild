# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="slider_gui"
HOMEPAGE="http://ros.org/wiki/slider_gui"
SRC_URI="https://github.com/pr2-gbp/pr2_hack_the_future-release/archive/release/indigo/slider_gui/1.1.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/face_detector
	ros-indigo/korg_nanokontrol
	ros-indigo/pr2_controllers_msgs
	ros-indigo/pr2_mechanism_msgs
	ros-indigo/program_queue
	ros-indigo/rospy
	ros-indigo/rviz_backdrop
	ros-indigo/sensor_msgs
	ros-indigo/sound_play
	ros-indigo/std_srvs
	ros-indigo/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

