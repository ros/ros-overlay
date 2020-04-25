# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The jsk_rviz_plugins package"
HOMEPAGE="http://jsk-docs.readthedocs.io/en/latest/jsk_visualization/doc/jsk_rviz_plugins"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/${PN}/2.1.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/diagnostic_msgs
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/image_geometry
	ros-melodic/image_publisher
	ros-melodic/jsk_footstep_msgs
	ros-melodic/jsk_gui_msgs
	ros-melodic/jsk_hark_msgs
	ros-melodic/jsk_recognition_msgs
	ros-melodic/jsk_recognition_utils
	ros-melodic/jsk_topic_tools
	ros-melodic/message_generation
	ros-melodic/people_msgs
	ros-melodic/posedetection_msgs
	ros-melodic/rviz
	ros-melodic/std_msgs
	ros-melodic/urdfdom_py
	ros-melodic/view_controller_msgs
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/mk
	ros-melodic/rosbuild
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
