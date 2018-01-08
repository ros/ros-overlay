# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The care-o-bot-robot meta-package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/care-o-bot-release/archive/release/indigo/${PN}/0.6.6-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_bringup
	ros-indigo/cob_manipulation
	ros-indigo/cob_navigation
	ros-indigo/robot_upstart
	sys-process/htop
	net-misc/openssh
	dev-python/wstool
	app-misc/tmux
	app-text/tree
	app-editors/vim
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
