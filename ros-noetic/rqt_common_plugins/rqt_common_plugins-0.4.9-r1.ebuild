# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="rqt_common_plugins metapackage provides ROS backend graphical tools suite t[...]"
HOMEPAGE="http://ros.org/wiki/rqt_common_plugins"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.4.9-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/rqt_action
	ros-noetic/rqt_bag
	ros-noetic/rqt_bag_plugins
	ros-noetic/rqt_console
	ros-noetic/rqt_dep
	ros-noetic/rqt_graph
	ros-noetic/rqt_image_view
	ros-noetic/rqt_launch
	ros-noetic/rqt_logger_level
	ros-noetic/rqt_msg
	ros-noetic/rqt_plot
	ros-noetic/rqt_publisher
	ros-noetic/rqt_py_common
	ros-noetic/rqt_py_console
	ros-noetic/rqt_reconfigure
	ros-noetic/rqt_service_caller
	ros-noetic/rqt_shell
	ros-noetic/rqt_srv
	ros-noetic/rqt_top
	ros-noetic/rqt_topic
	ros-noetic/rqt_web
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
