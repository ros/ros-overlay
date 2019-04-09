# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Communication types \(msgs/srvs/actions\) for robotics in concert \(aka mul[...]"
HOMEPAGE="http://www.ros.org/wiki/rocon_msgs"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/melodic/${PN}/0.9.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/concert_msgs
	ros-melodic/concert_service_msgs
	ros-melodic/gateway_msgs
	ros-melodic/rocon_app_manager_msgs
	ros-melodic/rocon_device_msgs
	ros-melodic/rocon_interaction_msgs
	ros-melodic/rocon_service_pair_msgs
	ros-melodic/rocon_std_msgs
	ros-melodic/rocon_tutorial_msgs
	ros-melodic/scheduler_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
