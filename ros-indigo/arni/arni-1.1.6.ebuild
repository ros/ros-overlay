# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Metapackage for Advanced Ros Network Introspection.'"
HOMEPAGE="http://wiki.ros.org/arni"
SRC_URI="https://github.com/ROS-PSE/arni-release/archive/release/indigo/arni/1.1.6-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/arni_core
	ros-indigo/arni_countermeasure
	ros-indigo/arni_gui
	ros-indigo/arni_msgs
	ros-indigo/arni_nodeinterface
	ros-indigo/arni_processing
	ros-indigo/arni_rqt_detail_plugin
	ros-indigo/arni_rqt_overview_plugin
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

