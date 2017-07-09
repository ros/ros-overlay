# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Pluginbased layers for the navigation stack that   implement various social na"
HOMEPAGE="http://ros.org/wiki/social_navigation_layers"
SRC_URI="https://github.com/wu-robotics/navigation_layers_release/archive/release/kinetic/social_navigation_layers/0.3.1-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/costmap_2d
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/people_msgs
	ros-kinetic/roscpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

