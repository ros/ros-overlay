# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This is a meta package for robotics in concertaka rocon"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon-release/archive/release/indigo/rocon/0.7.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/concert_services
	ros-indigo/rocon_app_platform
	ros-indigo/rocon_concert
	ros-indigo/rocon_msgs
	ros-indigo/rocon_multimaster
	ros-indigo/rocon_qt_gui
	ros-indigo/rocon_tools
	ros-indigo/rocon_tutorials
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

