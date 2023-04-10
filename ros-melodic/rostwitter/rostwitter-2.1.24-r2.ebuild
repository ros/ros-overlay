# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rostwitter package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/${PN}/2.1.24-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/message_runtime
	ros-melodic/rospy
	ros-melodic/std_msgs
	dev-python/requests
	dev-python/requests-oauthlib
	dev-python/simplejson
"
DEPEND="${RDEPEND}
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/mk
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
