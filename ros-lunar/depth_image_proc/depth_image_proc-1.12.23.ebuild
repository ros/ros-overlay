# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Contains nodelets for processing depth images such as those\
	 produced [...]"
HOMEPAGE="http://ros.org/wiki/depth_image_proc"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/lunar/${PN}/1.12.23-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/cv_bridge
	ros-lunar/eigen_conversions
	ros-lunar/image_geometry
	ros-lunar/image_transport
	ros-lunar/nodelet
	ros-lunar/tf2
	ros-lunar/tf2_ros
	test? ( ros-lunar/rostest )
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
	ros-lunar/message_filters
	ros-lunar/sensor_msgs
	ros-lunar/stereo_msgs
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
