if [[ $# != 1 ]]
then
echo "devi inserire il nome del file .pyx"
exit 1
fi
echo "from setuptools import setup
from Cython.Build import cythonize

setup(
    ext_modules = cythonize(\"$1\")
)" > setup.py

python setup.py build_ext --inplace
