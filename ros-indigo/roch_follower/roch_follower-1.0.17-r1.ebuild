# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Follower for the roch. Follows humans and robots around by following the ce[...]"
HOMEPAGE="http://ros.org/wiki/roch_follower"
SRC_URI="https://github.com/SawYerRobotics-release/roch-release/archive/release/indigo/${PN}/1.0.17-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/depth_image_proc
	ros-indigo/dynamic_reconfigure
	ros-indigo/nodelet
	ros-indigo/roch_bringup
	ros-indigo/roch_msgs
	ros-indigo/roch_teleop
	ros-indigo/roscpp
	ros-indigo/topic_tools
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
