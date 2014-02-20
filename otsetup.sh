cd ~/projects


# Chaiscript

git clone git://github.com/ChaiScript/ChaiScript.git
cd ChaiScript
cmake . -DCMAKE_INSTALL_PREFIX=$HOME/.local
make
make test
make install
cd ..

# setenv variable PKG_CONFIG_PATH
echo 'export PKG_CONFIG_PATH=$HOME/.local/lib/pkgconfig:$PKG_CONFIG_PATH' >> ~/.profile



# Open-Transactions

git clone git://github.com/Open-Transactions/Open-Transactions.git
cd Open-Transactions
./autogen.sh

./configure --prefix=$HOME/.local --with-python

make uninstall (cleanup from possible previous build)

make -j2

make install



# Miscellaneous

# set PATH so it includes user's .local root bin if it exists
echo 'if [ -d "$HOME/.local/bin" ] ; then' >> ~/.profile
echo '    PATH="$HOME/.local/bin:$PATH"' >> ~/.profile
echo 'fi' >> ~/.profile

# for python client api support export env variable
echo 'export PYTHONPATH=$HOME/.local/lib:$PYTHONPATH' >> ~/.profile

# to avoid logging out and then logging back in again, just do ...
source ~/.profile

# to look at an example wallet (WARNING : will reset all user data):
mkdir -p ~/.ot && cp -R sample-data/ot-sample-data/* ~/.ot

# also checkout tarball of sample contracts, baskets, server
cd ~/.local/share/opentxs
tar -xvf user-samples.tar.gz
ls
