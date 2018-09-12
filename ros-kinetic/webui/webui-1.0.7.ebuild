# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A web interface to install and launch applications for the PR2."
HOMEPAGE="http://ros.org/wiki/webui"
SRC_URI="https://github.com/UNR-RoboticsResearchLab/web_interface-release/archive/release/kinetic/${PN}/1.0.7-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_msgs
	ros-kinetic/launchman
	ros-kinetic/pyclearsilver
	ros-kinetic/ros_apache2
	ros-kinetic/roslib
	ros-kinetic/rospy
	ros-kinetic/rosservice
	ros-kinetic/rosweb
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/web_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
