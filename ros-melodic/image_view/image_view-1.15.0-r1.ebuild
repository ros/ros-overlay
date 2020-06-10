# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A simple viewer for ROS image topics. Includes a specialized viewer\
  for [...]"
HOMEPAGE="http://www.ros.org/wiki/image_view"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/${PN}/1.15.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/camera_calibration_parsers
	ros-melodic/cv_bridge
	ros-melodic/dynamic_reconfigure
	ros-melodic/image_transport
	ros-melodic/message_filters
	ros-melodic/nodelet
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/std_srvs
	test? ( ros-melodic/rostest )
	x11-libs/gtk+:2
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/sensor_msgs
	ros-melodic/stereo_msgs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
