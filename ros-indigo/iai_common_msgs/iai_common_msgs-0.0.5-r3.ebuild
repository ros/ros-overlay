# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Message definitions created and used by the Institute for Artificial Intell[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/code-iai-release/iai_common_msgs-release/archive/release/indigo/iai_common_msgs/0.0.5-3.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/data_vis_msgs
	ros-indigo/designator_integration_msgs
	ros-indigo/dna_extraction_msgs
	ros-indigo/grasp_stability_msgs
	ros-indigo/iai_content_msgs
	ros-indigo/iai_control_msgs
	ros-indigo/iai_kinematics_msgs
	ros-indigo/iai_robosherlock_actions
	ros-indigo/iai_urdf_msgs
	ros-indigo/iai_wsg_50_msgs
	ros-indigo/json_prolog_msgs
	ros-indigo/mln_robosherlock_msgs
	ros-indigo/person_msgs
	ros-indigo/planning_msgs
	ros-indigo/saphari_msgs
	ros-indigo/scanning_table_msgs
	ros-indigo/sherlock_sim_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
