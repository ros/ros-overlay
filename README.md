ros-overlay
===========
This overlay contains ebuilds for the Robot Operating System (ROS).

For instructions, please look to the [ROS wiki](http://wiki.ros.org/ROS/Installation).

Contributing
=============

There's a lot of ways to help out.

My Build Failed:
-----------------
In managing some 6000 ebuilds, one runs into a few hickups. Please don't hesitate
to file an issue!

### List of Failures
As changes progress, things break. You can find a list of failures
[here](https://gist.github.com/allenh1/8583d09f6ef4273b6e364e3578edad3d) in the form of a GitHub gist.

Superflore:
------------
[Superflore](https://github.com/ros-infrastructure/superflore) is the tool used to
generate almost every ebuild in this repository. Since, frequently, the issue is that
an ebuild simply needs to be regenerated, I'll document how to use Superflore to do so.

1. Ensure you have _docker_ installed. This is needed to generate manifests.
2. [optional] Clone the overlay somewhere on your system, and verify it is on the master branch.
3. Set up your `~/.netrc` file with your GitHub login.
4. Clone & install superflore.
```
$ git clone https://github.com/ros-infrastructure/superflore
$ cd superflore
$ sudo python3 ./setup.py install
```
5. Run superflore to regenerate your package(s).
```
$ superflore-gen-ebuilds --ros-distro [distro] --only [pkg1] [pkg2] ... [pkgn]
```

If you cloned the overlay and want to use the stashed version, add `--output-repository-path [location of your repo]` to the end of the command above.
6. The above command will file a PR under your name to this overlay.


### Checking Packages with Superflore
You can also check if packages are building using `superflore`.

```
$ superflore-check-ebuilds --ros-distro [distro_1] [distro_2] ... [distro_n] --pkgs [pkg1] [pkg2] ... [pkgn]
```

This will spawn a fresh docker container for each package you listed, and attempt to build the
package on a clean docker image.
