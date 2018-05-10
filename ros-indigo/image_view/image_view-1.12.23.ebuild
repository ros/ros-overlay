# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A simple viewer for ROS image topics. Includes a specialized viewer\
  for [...]"
HOMEPAGE="http://www.ros.org/wiki/image_view"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/indigo/${PN}/1.12.23-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/camera_calibration_parsers
	ros-indigo/cv_bridge
	ros-indigo/dynamic_reconfigure
	ros-indigo/image_transport
	ros-indigo/message_filters
	ros-indigo/nodelet
	ros-indigo/rosconsole
	ros-indigo/roscpp
	ros-indigo/std_srvs
	test? ( ros-indigo/rostest )
	x11-libs/gtk+:2
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/sensor_msgs
	ros-indigo/stereo_msgs
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
