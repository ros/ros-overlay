# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="swri_image_util"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/${PN}/2.10.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/camera_calibration_parsers
	ros-kinetic/cv_bridge
	ros-kinetic/geometry_msgs
	ros-kinetic/image_geometry
	ros-kinetic/image_transport
	ros-kinetic/message_filters
	ros-kinetic/nav_msgs
	ros-kinetic/nodelet
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	ros-kinetic/swri_geometry_util
	ros-kinetic/swri_math_util
	ros-kinetic/swri_opencv_util
	ros-kinetic/swri_roscpp
	ros-kinetic/tf
	test? ( ros-kinetic/rostest )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/swri_nodelet
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
