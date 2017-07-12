# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Tutorials for the rocon app manager"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_tutorials-release/archive/release/indigo/rocon_app_manager_tutorials/0.6.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rocon_app_manager
	ros-indigo/rocon_apps
	ros-indigo/rocon_interactions
	ros-indigo/rocon_master_info
	ros-indigo/rocon_qt_listener
	ros-indigo/rocon_remocon
	ros-indigo/rosbridge_server
	ros-indigo/turtle_concert
	ros-indigo/turtlesim
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

