# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="<p>\
	  Contains a node publish an image stream from single image file\
[...]"
HOMEPAGE="http://ros.org/wiki/image_publisher"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/noetic/${PN}/1.15.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/camera_info_manager
	ros-noetic/cv_bridge
	ros-noetic/dynamic_reconfigure
	ros-noetic/image_transport
	ros-noetic/nodelet
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
