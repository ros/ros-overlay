# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="rosweb is a temporary package to replace the original rosweb in the ROS\
  [...]"
HOMEPAGE="http://ros.org/wiki/rosweb"
SRC_URI="https://github.com/UNR-RoboticsResearchLab/web_interface-release/archive/release/indigo/${PN}/1.0.7-2.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosjson
	ros-indigo/roslib
	ros-indigo/rospy
	ros-indigo/rosservice
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
