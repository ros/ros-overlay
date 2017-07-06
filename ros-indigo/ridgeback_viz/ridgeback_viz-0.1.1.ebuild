# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Visualization launchers and helpers for Ridgeback.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/ridgeback_desktop-release/archive/release/indigo/ridgeback_viz/0.1.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/joint_state_publisher
	ros-indigo/ridgeback_description
	ros-indigo/rviz
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

