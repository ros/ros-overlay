# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="swri_image_util"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/lunar/${PN}/2.8.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/camera_calibration_parsers
	ros-lunar/cv_bridge
	ros-lunar/geometry_msgs
	ros-lunar/image_geometry
	ros-lunar/image_transport
	ros-lunar/message_filters
	ros-lunar/nav_msgs
	ros-lunar/nodelet
	ros-lunar/roscpp
	ros-lunar/rospy
	ros-lunar/std_msgs
	ros-lunar/swri_geometry_util
	ros-lunar/swri_math_util
	ros-lunar/swri_opencv_util
	ros-lunar/swri_roscpp
	ros-lunar/tf
	test? ( ros-lunar/rostest )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/swri_nodelet
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
