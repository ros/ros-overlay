# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Python interfaces for managing a pool of ROCON scheduler resources.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/utexas-bwi-gbp/concert_scheduling-release/archive/release/indigo/concert_resource_pool/0.7.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/concert_msgs
	ros-indigo/rocon_app_manager_msgs
	ros-indigo/rocon_std_msgs
	ros-indigo/rocon_uri
	ros-indigo/rospy
	ros-indigo/scheduler_msgs
	ros-indigo/unique_id
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslint
	ros-indigo/rostest
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

