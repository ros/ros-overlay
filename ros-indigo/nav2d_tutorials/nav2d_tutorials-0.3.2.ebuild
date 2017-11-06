# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Contains a set of tutorials that run 2D-Navigation within Stage-Simulator."
HOMEPAGE="http://wiki.ros.org/nav2d_tutorials"
SRC_URI="https://github.com/skasperski/navigation_2d-release/archive/release/indigo/nav2d_tutorials/0.3.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/nav2d_exploration
	ros-indigo/nav2d_karto
	ros-indigo/nav2d_localizer
	ros-indigo/nav2d_msgs
	ros-indigo/nav2d_navigator
	ros-indigo/nav2d_operator
	ros-indigo/nav2d_remote
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
