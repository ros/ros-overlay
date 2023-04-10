# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="mapviz"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/foxy/${PN}/2.1.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/cv_bridge
	ros-foxy/geometry_msgs
	ros-foxy/image_transport
	ros-foxy/mapviz_interfaces
	ros-foxy/marti_common_msgs
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/rqt_gui
	ros-foxy/rqt_gui_cpp
	ros-foxy/std_srvs
	ros-foxy/swri_math_util
	ros-foxy/swri_transform_util
	ros-foxy/tf2
	ros-foxy/tf2_geometry_msgs
	ros-foxy/tf2_ros
	media-libs/freeglut
	media-libs/glew
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
	x11-libs/libXi
	x11-libs/libXmu
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	dev-qt/qtopengl:5
	virtual/pkgconfig
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
