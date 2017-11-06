# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="PALspecific messages and services"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-gbp/pal_msgs-release/archive/release/indigo/pal_msgs/0.11.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/pal_behaviour_msgs
	ros-indigo/pal_control_msgs
	ros-indigo/pal_detection_msgs
	ros-indigo/pal_device_msgs
	ros-indigo/pal_interaction_msgs
	ros-indigo/pal_motion_model_msgs
	ros-indigo/pal_multirobot_msgs
	ros-indigo/pal_navigation_msgs
	ros-indigo/pal_tablet_msgs
	ros-indigo/pal_vision_msgs
	ros-indigo/pal_walking_msgs
	ros-indigo/pal_wifi_localization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

