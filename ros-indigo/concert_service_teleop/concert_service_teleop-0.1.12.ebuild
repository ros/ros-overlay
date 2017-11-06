# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Teleop by request from a rocon interactive program."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/concert_services-release/archive/release/indigo/concert_service_teleop/0.1.12-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/concert_msgs
	ros-indigo/concert_scheduler_requests
	ros-indigo/concert_service_msgs
	ros-indigo/concert_service_utilities
	ros-indigo/concert_software_farmer
	ros-indigo/rocon_python_comms
	ros-indigo/rocon_std_msgs
	ros-indigo/rocon_uri
	ros-indigo/rospy
	ros-indigo/scheduler_msgs
	ros-indigo/unique_id
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
