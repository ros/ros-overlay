# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="mapviz"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/galactic/${PN}/2.2.0-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/cv_bridge
	ros-galactic/geometry_msgs
	ros-galactic/image_transport
	ros-galactic/launch_xml
	ros-galactic/mapviz_interfaces
	ros-galactic/marti_common_msgs
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/rqt_gui
	ros-galactic/rqt_gui_cpp
	ros-galactic/std_srvs
	ros-galactic/swri_math_util
	ros-galactic/swri_transform_util
	ros-galactic/tf2
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_ros
	media-libs/freeglut
	media-libs/glew
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
	x11-libs/libXi
	x11-libs/libXmu
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	dev-qt/qtopengl:5
	virtual/pkgconfig
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
