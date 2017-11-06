# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A simple software concert describing how multiple robots launched in\
	s[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_tutorials-release/archive/release/indigo/gazebo_concert/0.6.7-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/concert_master
	ros-indigo/concert_msgs
	ros-indigo/concert_scheduler_requests
	ros-indigo/concert_service_admin
	ros-indigo/concert_service_gazebo
	ros-indigo/geometry_msgs
	ros-indigo/rocon_app_manager
	ros-indigo/rocon_apps
	ros-indigo/rocon_bubble_icons
	ros-indigo/rocon_python_comms
	ros-indigo/rocon_python_utils
	ros-indigo/rocon_uri
	ros-indigo/rospy
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
