# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="swri_image_util"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/${PN}/2.13.7-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/camera_calibration_parsers
	ros-melodic/cv_bridge
	ros-melodic/geometry_msgs
	ros-melodic/image_geometry
	ros-melodic/image_transport
	ros-melodic/message_filters
	ros-melodic/nav_msgs
	ros-melodic/nodelet
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/std_msgs
	ros-melodic/swri_geometry_util
	ros-melodic/swri_math_util
	ros-melodic/swri_opencv_util
	ros-melodic/swri_roscpp
	ros-melodic/tf
	test? ( ros-melodic/rostest )
	dev-libs/boost[python]
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/swri_nodelet
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
