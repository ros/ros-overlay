# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="camera_calibration allows easy calibration of monocular or stereo\
	 cam[...]"
HOMEPAGE="http://www.ros.org/wiki/camera_calibration"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/noetic/${PN}/1.15.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/image_geometry
	ros-noetic/message_filters
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_srvs
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
