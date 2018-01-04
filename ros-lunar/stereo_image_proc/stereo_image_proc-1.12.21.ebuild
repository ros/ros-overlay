# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Stereo and single image rectification and disparity processing."
HOMEPAGE="http://www.ros.org/wiki/stereo_image_proc"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/lunar/${PN}/1.12.21-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/cv_bridge
	ros-lunar/dynamic_reconfigure
	ros-lunar/image_geometry
	ros-lunar/image_proc
	ros-lunar/image_transport
	ros-lunar/message_filters
	ros-lunar/nodelet
	ros-lunar/sensor_msgs
	ros-lunar/stereo_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
