# We test the environment variables in a different recipe

# Ensure we are in a git repo
[ -d .git ]
git describe
[ "$(git describe)" = 1.20.2 ]
echo "\$PKG_VERSION = $PKG_VERSION"
[ "${PKG_VERSION}" = 1.20.2 ]
PYTHONPATH=. python -c "import conda_build; assert conda_build.__version__ == '1.20.2', conda_build.__version__"
