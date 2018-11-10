# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rqt_common_plugins metapackage provides ROS backend graphical tools suite t[...]"
HOMEPAGE="http://ros.org/wiki/rqt_common_plugins"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.4.8-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rqt_action
	ros-melodic/rqt_bag
	ros-melodic/rqt_bag_plugins
	ros-melodic/rqt_console
	ros-melodic/rqt_dep
	ros-melodic/rqt_graph
	ros-melodic/rqt_image_view
	ros-melodic/rqt_launch
	ros-melodic/rqt_logger_level
	ros-melodic/rqt_msg
	ros-melodic/rqt_plot
	ros-melodic/rqt_publisher
	ros-melodic/rqt_py_common
	ros-melodic/rqt_py_console
	ros-melodic/rqt_reconfigure
	ros-melodic/rqt_service_caller
	ros-melodic/rqt_shell
	ros-melodic/rqt_srv
	ros-melodic/rqt_top
	ros-melodic/rqt_topic
	ros-melodic/rqt_web
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
