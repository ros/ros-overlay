# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="swri_image_util"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/lunar/swri_image_util/0.3.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

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
	ros-lunar/tf
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	virtual/pkgconfig
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

