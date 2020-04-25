# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The jsk_rviz_plugins package"
HOMEPAGE="http://jsk-docs.readthedocs.io/en/latest/jsk_visualization/doc/jsk_rviz_plugins"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/${PN}/2.1.6-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/diagnostic_msgs
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/geometry_msgs
	ros-kinetic/image_geometry
	ros-kinetic/image_publisher
	ros-kinetic/jsk_footstep_msgs
	ros-kinetic/jsk_gui_msgs
	ros-kinetic/jsk_hark_msgs
	ros-kinetic/jsk_recognition_msgs
	ros-kinetic/jsk_recognition_utils
	ros-kinetic/jsk_topic_tools
	ros-kinetic/message_generation
	ros-kinetic/people_msgs
	ros-kinetic/posedetection_msgs
	ros-kinetic/rviz
	ros-kinetic/std_msgs
	ros-kinetic/urdfdom_py
	ros-kinetic/view_controller_msgs
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/mk
	ros-kinetic/rosbuild
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
