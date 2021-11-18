# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="rqt_common_plugins metapackage provides ROS backend graphical tools suite t[...]"
HOMEPAGE="http://ros.org/wiki/rqt_common_plugins"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/1.1.0-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/rqt_action
	ros-galactic/rqt_bag
	ros-galactic/rqt_bag_plugins
	ros-galactic/rqt_console
	ros-galactic/rqt_graph
	ros-galactic/rqt_image_view
	ros-galactic/rqt_msg
	ros-galactic/rqt_plot
	ros-galactic/rqt_publisher
	ros-galactic/rqt_py_common
	ros-galactic/rqt_py_console
	ros-galactic/rqt_reconfigure
	ros-galactic/rqt_service_caller
	ros-galactic/rqt_shell
	ros-galactic/rqt_srv
	ros-galactic/rqt_top
	ros-galactic/rqt_topic
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
