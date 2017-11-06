# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Definitions for mesages, services and actions Startup packages for the robots"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/squirrel-project/squirrel_common-release/archive/release/indigo/squirrel_common/0.0.24-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/robotino_description
	ros-indigo/robotino_msgs
	ros-indigo/softhand_description
	ros-indigo/squirrel_3d_localizer_msgs
	ros-indigo/squirrel_3d_mapping_msgs
	ros-indigo/squirrel_dynamic_filter_msgs
	ros-indigo/squirrel_hri_msgs
	ros-indigo/squirrel_kclhand_msgs
	ros-indigo/squirrel_localizer_msgs
	ros-indigo/squirrel_manipulation_msgs
	ros-indigo/squirrel_mhand_msgs
	ros-indigo/squirrel_navigation_msgs
	ros-indigo/squirrel_object_perception_msgs
	ros-indigo/squirrel_person_tracker_msgs
	ros-indigo/squirrel_planning_knowledge_msgs
	ros-indigo/squirrel_prediction_msgs
	ros-indigo/squirrel_rgbd_mapping_msgs
	ros-indigo/squirrel_sketch_interface_msgs
	ros-indigo/squirrel_speech_msgs
	ros-indigo/squirrel_vad_msgs
	ros-indigo/squirrel_view_controller_msgs
	ros-indigo/squirrel_waypoint_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

