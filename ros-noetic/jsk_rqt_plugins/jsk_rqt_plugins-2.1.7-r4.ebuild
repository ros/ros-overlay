# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The jsk_rqt_plugins package"
HOMEPAGE="http://jsk-docs.readthedocs.io/en/latest/jsk_visualization/doc/jsk_rqt_plugins"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/noetic/${PN}/2.1.7-4.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/image_publisher
	ros-noetic/image_view2
	ros-noetic/jsk_gui_msgs
	ros-noetic/message_runtime
	ros-noetic/qt_gui_py_common
	ros-noetic/resource_retriever
	ros-noetic/rqt_gui
	ros-noetic/rqt_gui_py
	ros-noetic/rqt_image_view
	ros-noetic/rqt_plot
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/rostest )
	sci-libs/scikits_learn
	sci-libs/scikits_learn
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	ros-noetic/mk
	ros-noetic/rosbuild
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
