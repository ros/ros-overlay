# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The bayesian_belief_networks package form https://githubcom/eBay/bayesianbelie"
HOMEPAGE="https://github.com/eBay/bayesian-belief-networks"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/indigo/bayesian_belief_networks/2.1.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( Apache-1.0 CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/message_runtime
	ros-indigo/rospy
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/mk
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

