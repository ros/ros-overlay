# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Face detection in images."
HOMEPAGE="http://ros.org/wiki/face_detector"
SRC_URI="https://github.com/OSUrobotics/people-release/archive/release/melodic/${PN}/1.2.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/cv_bridge
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/image_geometry
	ros-melodic/image_transport
	ros-melodic/message_filters
	ros-melodic/message_runtime
	ros-melodic/people_msgs
	ros-melodic/rosbag
	ros-melodic/roscpp
	ros-melodic/roslib
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/stereo_image_proc
	ros-melodic/stereo_msgs
	ros-melodic/tf
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/stereo_image_proc )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
