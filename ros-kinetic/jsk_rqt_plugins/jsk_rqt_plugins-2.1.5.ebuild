# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The jsk_rqt_plugins package"
HOMEPAGE="http://jsk-docs.readthedocs.io/en/latest/jsk_visualization/doc/jsk_rqt_plugins"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/${PN}/2.1.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/image_pipeline
	ros-kinetic/image_view2
	ros-kinetic/jsk_gui_msgs
	ros-kinetic/message_runtime
	ros-kinetic/qt_gui_py_common
	ros-kinetic/resource_retriever
	ros-kinetic/rqt_gui
	ros-kinetic/rqt_gui_py
	ros-kinetic/rqt_image_view
	ros-kinetic/rqt_plot
	test? ( ros-kinetic/roslaunch )
	test? ( ros-kinetic/rostest )
	sci-libs/scikits_learn
	dev-python/urlgrabber
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
	ros-kinetic/mk
	ros-kinetic/rosbuild
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
