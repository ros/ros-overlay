# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Flips the image of Care-O-bots kinect in dependence of the viewing directio[...]"
HOMEPAGE="http://wiki.ros.org/cob_image_flip"
SRC_URI="https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/${PN}/0.6.15-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cob_perception_msgs
	ros-melodic/cv_bridge
	ros-melodic/geometry_msgs
	ros-melodic/image_transport
	ros-melodic/nodelet
	ros-melodic/pcl_conversions
	ros-melodic/pcl_ros
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/stereo_msgs
	ros-melodic/tf
	dev-libs/boost[python]
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
