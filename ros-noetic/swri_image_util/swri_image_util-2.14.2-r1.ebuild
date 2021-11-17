# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="swri_image_util"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/${PN}/2.14.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/camera_calibration_parsers
	ros-noetic/cv_bridge
	ros-noetic/geometry_msgs
	ros-noetic/image_geometry
	ros-noetic/image_transport
	ros-noetic/message_filters
	ros-noetic/nav_msgs
	ros-noetic/nodelet
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/std_msgs
	ros-noetic/swri_geometry_util
	ros-noetic/swri_math_util
	ros-noetic/swri_opencv_util
	ros-noetic/swri_roscpp
	ros-noetic/tf
	test? ( ros-noetic/rostest )
	dev-libs/boost[python]
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/swri_nodelet
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
