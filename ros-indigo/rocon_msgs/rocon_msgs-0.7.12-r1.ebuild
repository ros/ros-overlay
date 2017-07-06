# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Communication types (msgs/srvs/actions) for robotics in concert (aka multimaster'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/indigo/rocon_msgs/0.7.12-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/concert_msgs
	ros-indigo/concert_service_msgs
	ros-indigo/gateway_msgs
	ros-indigo/rocon_app_manager_msgs
	ros-indigo/rocon_device_msgs
	ros-indigo/rocon_interaction_msgs
	ros-indigo/rocon_service_pair_msgs
	ros-indigo/rocon_std_msgs
	ros-indigo/rocon_tutorial_msgs
	ros-indigo/scheduler_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

