# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="laser_tilt_controller_filter"
HOMEPAGE="http://ros.org/wiki/laser_tilt_controller_filter"
SRC_URI="https://github.com/pr2-gbp/pr2_navigation-release/archive/release/indigo/laser_tilt_controller_filter/0.1.27-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/filters
	ros-indigo/pluginlib
	ros-indigo/pr2_msgs
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

