# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="brul#text"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt_common_plugins-release/archive/release/indigo/rqt_common_plugins/0.4.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rqt_action
	ros-indigo/rqt_bag
	ros-indigo/rqt_bag_plugins
	ros-indigo/rqt_console
	ros-indigo/rqt_dep
	ros-indigo/rqt_graph
	ros-indigo/rqt_image_view
	ros-indigo/rqt_launch
	ros-indigo/rqt_logger_level
	ros-indigo/rqt_msg
	ros-indigo/rqt_plot
	ros-indigo/rqt_publisher
	ros-indigo/rqt_py_common
	ros-indigo/rqt_py_console
	ros-indigo/rqt_reconfigure
	ros-indigo/rqt_service_caller
	ros-indigo/rqt_shell
	ros-indigo/rqt_srv
	ros-indigo/rqt_top
	ros-indigo/rqt_topic
	ros-indigo/rqt_web
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

