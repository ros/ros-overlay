# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The jsk_rviz_plugins package"
HOMEPAGE="http://jsk-docs.readthedocs.io/en/latest/jsk_visualization/doc/jsk_rviz_plugins"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/indigo/${PN}/2.1.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/diagnostic_msgs
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/image_geometry
	ros-indigo/jsk_footstep_msgs
	ros-indigo/jsk_gui_msgs
	ros-indigo/jsk_hark_msgs
	ros-indigo/jsk_recognition_msgs
	ros-indigo/jsk_recognition_utils
	ros-indigo/jsk_topic_tools
	ros-indigo/message_generation
	ros-indigo/people_msgs
	ros-indigo/posedetection_msgs
	ros-indigo/rviz
	ros-indigo/std_msgs
	ros-indigo/urdfdom_py
	ros-indigo/view_controller_msgs
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/mk
	ros-indigo/rosbuild
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
