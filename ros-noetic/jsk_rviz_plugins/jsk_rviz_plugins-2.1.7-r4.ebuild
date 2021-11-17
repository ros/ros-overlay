# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The jsk_rviz_plugins package"
HOMEPAGE="http://jsk-docs.readthedocs.io/en/latest/jsk_visualization/doc/jsk_rviz_plugins"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/noetic/${PN}/2.1.7-4.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/diagnostic_msgs
	ros-noetic/dynamic_reconfigure
	ros-noetic/geometry_msgs
	ros-noetic/image_geometry
	ros-noetic/image_publisher
	ros-noetic/jsk_footstep_msgs
	ros-noetic/jsk_gui_msgs
	ros-noetic/jsk_hark_msgs
	ros-noetic/jsk_recognition_msgs
	ros-noetic/jsk_recognition_utils
	ros-noetic/jsk_topic_tools
	ros-noetic/message_generation
	ros-noetic/people_msgs
	ros-noetic/posedetection_msgs
	ros-noetic/rviz
	ros-noetic/std_msgs
	ros-noetic/urdfdom_py
	ros-noetic/view_controller_msgs
	sci-libs/scipy
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/mk
	ros-noetic/rosbuild
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
