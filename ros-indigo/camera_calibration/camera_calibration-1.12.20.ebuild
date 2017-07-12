# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="camera_calibration allows easy calibration of monocular or stereo	 cameras u"
HOMEPAGE="http://www.ros.org/wiki/camera_calibration"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/indigo/camera_calibration/1.12.20-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/image_geometry
	ros-indigo/message_filters
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/std_srvs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

