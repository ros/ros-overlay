# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The marker_rviz_plugin package contains RViz plugins to visualize messages of th"
HOMEPAGE="http://wiki.ros.org/marker_rviz_plugin"
SRC_URI="https://github.com/tuw-robotics/marker_rviz_plugin-release/archive/release/kinetic/marker_rviz_plugin/0.0.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/marker_msgs
	ros-kinetic/roscpp
	ros-kinetic/rviz
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

