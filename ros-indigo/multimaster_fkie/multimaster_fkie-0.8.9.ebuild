# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The metapackage to combine the nodes required to establish and manage a mul[...]"
HOMEPAGE="http://ros.org/wiki/multimaster_fkie"
SRC_URI="https://github.com/fkie-release/${PN}-release/archive/release/indigo/${PN}/0.8.9-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/default_cfg_fkie
	ros-indigo/master_discovery_fkie
	ros-indigo/master_sync_fkie
	ros-indigo/multimaster_msgs_fkie
	ros-indigo/node_manager_fkie
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
