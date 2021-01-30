# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A simple viewer for ROS image topics. Includes a specialized viewer\
  for [...]"
HOMEPAGE="http://www.ros.org/wiki/image_view"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/noetic/${PN}/1.15.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/camera_calibration_parsers
	ros-noetic/cv_bridge
	ros-noetic/dynamic_reconfigure
	ros-noetic/image_transport
	ros-noetic/message_filters
	ros-noetic/nodelet
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/std_srvs
	test? ( ros-noetic/rostest )
	x11-libs/gtk+:3
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	ros-noetic/sensor_msgs
	ros-noetic/stereo_msgs
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
