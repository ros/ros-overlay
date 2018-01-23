# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS-Industrial support for Fanuc manipulators \(metapackage\)."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/${PN}-release/archive/release/indigo/${PN}/0.4.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/fanuc_driver
	ros-indigo/fanuc_lrmate200ib3l_moveit_config
	ros-indigo/fanuc_lrmate200ib_moveit_config
	ros-indigo/fanuc_lrmate200ib_moveit_plugins
	ros-indigo/fanuc_lrmate200ib_support
	ros-indigo/fanuc_lrmate200ic5h_moveit_config
	ros-indigo/fanuc_lrmate200ic5l_moveit_config
	ros-indigo/fanuc_lrmate200ic_moveit_config
	ros-indigo/fanuc_lrmate200ic_moveit_plugins
	ros-indigo/fanuc_lrmate200ic_support
	ros-indigo/fanuc_m10ia_moveit_config
	ros-indigo/fanuc_m10ia_moveit_plugins
	ros-indigo/fanuc_m10ia_support
	ros-indigo/fanuc_m16ib20_moveit_config
	ros-indigo/fanuc_m16ib_moveit_plugins
	ros-indigo/fanuc_m16ib_support
	ros-indigo/fanuc_m20ia10l_moveit_config
	ros-indigo/fanuc_m20ia_moveit_config
	ros-indigo/fanuc_m20ia_moveit_plugins
	ros-indigo/fanuc_m20ia_support
	ros-indigo/fanuc_m430ia2f_moveit_config
	ros-indigo/fanuc_m430ia2p_moveit_config
	ros-indigo/fanuc_m430ia_moveit_plugins
	ros-indigo/fanuc_m430ia_support
	ros-indigo/fanuc_m6ib_moveit_config
	ros-indigo/fanuc_m6ib_moveit_plugins
	ros-indigo/fanuc_m6ib_support
	ros-indigo/fanuc_resources
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
