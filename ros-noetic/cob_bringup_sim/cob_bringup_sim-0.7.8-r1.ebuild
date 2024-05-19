# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package provides launch files for starting a simulated Care-O-bot."
HOMEPAGE="http://ros.org/wiki/cob_bringup_sim"
SRC_URI="https://github.com/ipa320/cob_simulation-release/archive/release/noetic/${PN}/0.7.8-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cob_default_env_config
	ros-noetic/cob_default_robot_config
	ros-noetic/cob_gazebo
	ros-noetic/cob_gazebo_worlds
	ros-noetic/gazebo_ros
	test? ( ros-noetic/cob_default_env_config )
	test? ( ros-noetic/cob_supported_robots )
	test? ( ros-noetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
