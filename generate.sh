#!/bin/sh

set -eu

cwd=$(pwd)
glad_dir=../glad

cd $glad_dir

python -m glad --out-path=${cwd}/v2.1 --api gl:core=2.1 hare
python -m glad --out-path=${cwd}/v3.2-compatibility --api gl:compatibility=3.2 hare
python -m glad --out-path=${cwd}/v3.2-core --api gl:core=3.2 hare
python -m glad --out-path=${cwd}/v3.3-compatibility --api gl:compatibility=3.3 hare
python -m glad --out-path=${cwd}/v3.3-core --api gl:core=3.3 hare
python -m glad --out-path=${cwd}/v4.1-compatibility --api gl:compatibility=4.1 hare
python -m glad --out-path=${cwd}/v4.1-core --api gl:core=4.1 hare
python -m glad --out-path=${cwd}/v4.2-compatibility --api gl:compatibility=4.2 hare
python -m glad --out-path=${cwd}/v4.2-core --api gl:core=4.2 hare
python -m glad --out-path=${cwd}/v4.3-compatibility --api gl:compatibility=4.3 hare
python -m glad --out-path=${cwd}/v4.3-core --api gl:core=4.3 hare
python -m glad --out-path=${cwd}/v4.4-compatibility --api gl:compatibility=4.4 hare
python -m glad --out-path=${cwd}/v4.4-core --api gl:core=4.4 hare
python -m glad --out-path=${cwd}/v4.5-compatibility --api gl:compatibility=4.5 hare
python -m glad --out-path=${cwd}/v4.5-core --api gl:core=4.5 hare
python -m glad --out-path=${cwd}/v4.6-compatibility --api gl:compatibility=4.6 hare
python -m glad --out-path=${cwd}/v4.6-core --api gl:core=4.6 hare
