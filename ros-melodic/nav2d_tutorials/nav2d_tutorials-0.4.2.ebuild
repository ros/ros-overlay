# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Contains a set of tutorials that run 2D-Navigation within Stage-Simulator."
HOMEPAGE="http://wiki.ros.org/nav2d_tutorials"
SRC_URI="https://github.com/skasperski/navigation_2d-release/archive/release/melodic/${PN}/0.4.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/nav2d_exploration
	ros-melodic/nav2d_karto
	ros-melodic/nav2d_localizer
	ros-melodic/nav2d_msgs
	ros-melodic/nav2d_navigator
	ros-melodic/nav2d_operator
	ros-melodic/nav2d_remote
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
