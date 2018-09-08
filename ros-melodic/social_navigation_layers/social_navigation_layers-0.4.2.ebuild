# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Plugin-based layers for the navigation stack that \
  implement various soc[...]"
HOMEPAGE="http://ros.org/wiki/social_navigation_layers"
SRC_URI="https://github.com/wu-robotics/navigation_layers_release/archive/release/melodic/${PN}/0.4.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/angles
	ros-melodic/costmap_2d
	ros-melodic/dynamic_reconfigure
	ros-melodic/people_msgs
	ros-melodic/pluginlib
	ros-melodic/roscpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"