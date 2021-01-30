# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="cv_camera uses OpenCV capture object to capture camera image.\
  This suppo[...]"
HOMEPAGE="http://wiki.ros.org/cv_camera"
SRC_URI="https://github.com/OTL/${PN}-release/archive/release/noetic/${PN}/0.5.0-3.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/camera_info_manager
	ros-noetic/cv_bridge
	ros-noetic/image_transport
	ros-noetic/nodelet
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roslint
	ros-noetic/rostest
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
