# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Stereo and single image rectification and disparity processing.'"
HOMEPAGE="http://www.ros.org/wiki/stereo_image_proc"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/indigo/stereo_image_proc/1.12.20-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/dynamic_reconfigure
	ros-indigo/image_geometry
	ros-indigo/image_proc
	ros-indigo/image_transport
	ros-indigo/message_filters
	ros-indigo/nodelet
	ros-indigo/sensor_msgs
	ros-indigo/stereo_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

