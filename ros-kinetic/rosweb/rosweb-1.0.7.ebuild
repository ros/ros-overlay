# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="rosweb is a temporary package to replace the original rosweb in the ROS\
  [...]"
HOMEPAGE="http://ros.org/wiki/rosweb"
SRC_URI="https://github.com/UNR-RoboticsResearchLab/web_interface-release/archive/release/kinetic/${PN}/1.0.7-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rosjson
	ros-kinetic/roslib
	ros-kinetic/rospy
	ros-kinetic/rosservice
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
