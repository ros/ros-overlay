# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The airbus_coop metapackage"
HOMEPAGE="http://ros.org/wiki/airbus_coop"
SRC_URI="https://github.com/ipa320/airbus_coop-release/archive/release/indigo/airbus_coop/0.0.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/airbus_cobot_gui
	ros-indigo/airbus_docgen
	ros-indigo/airbus_plugin_log_manager
	ros-indigo/airbus_plugin_node_manager
	ros-indigo/airbus_plugin_rqt
	ros-indigo/airbus_plugin_rviz
	ros-indigo/airbus_pyqt_extend
	ros-indigo/airbus_ssm_core
	ros-indigo/airbus_ssm_plugin
	ros-indigo/airbus_ssm_tutorial
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

