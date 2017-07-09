# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The public interface and retaskable interface for a robot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_app_platform-release/archive/release/kinetic/rocon_app_manager/0.9.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/capabilities
	ros-kinetic/gateway_msgs
	ros-kinetic/rocon_app_manager_msgs
	ros-kinetic/rocon_app_utilities
	ros-kinetic/rocon_apps
	ros-kinetic/rocon_console
	ros-kinetic/rocon_gateway
	ros-kinetic/rocon_gateway_utils
	ros-kinetic/rocon_hub
	ros-kinetic/rocon_interactions
	ros-kinetic/rocon_master_info
	ros-kinetic/rocon_python_comms
	ros-kinetic/rocon_python_utils
	ros-kinetic/rocon_std_msgs
	ros-kinetic/rocon_uri
	ros-kinetic/roslib
	ros-kinetic/rosmaster
	ros-kinetic/rospy
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslint
	ros-kinetic/rostest
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

