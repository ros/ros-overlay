# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="rqt_image_view provides a GUI plugin for displaying images using image_tran[...]"
HOMEPAGE="http://wiki.ros.org/rqt_image_view"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/crystal/${PN}/1.0.0-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/cv_bridge
	ros-crystal/geometry_msgs
	ros-crystal/image_transport
	ros-crystal/qt_gui_cpp
	ros-crystal/rclcpp
	ros-crystal/rqt_gui
	ros-crystal/rqt_gui_cpp
	ros-crystal/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
